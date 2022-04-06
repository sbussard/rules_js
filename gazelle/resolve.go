package gazelle

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/bazelbuild/bazel-gazelle/config"
	"github.com/bazelbuild/bazel-gazelle/label"
	"github.com/bazelbuild/bazel-gazelle/repo"
	"github.com/bazelbuild/bazel-gazelle/resolve"
	"github.com/bazelbuild/bazel-gazelle/rule"
	bzl "github.com/bazelbuild/buildtools/build"
	"github.com/emirpasic/gods/sets/treeset"
)

var EXPLAIN_DEPENDENCY = os.Getenv("EXPLAIN_DEPENDENCY")

// Name returns the name of the language. This is the prefix of the kinds of
// rules generated. E.g. ts_project
func (*TypeScript) Name() string { return languageName }

// Determine what rule (r) outputs which can be imported.
// For TypeScript this is all the import-paths pointing to files within the rule.
func (ts *TypeScript) Imports(c *config.Config, r *rule.Rule, f *rule.File) []resolve.ImportSpec {
	srcs := r.AttrStrings("srcs")
	provides := make([]resolve.ImportSpec, 0, len(srcs)+1)

	cfgs := c.Exts[languageName].(Configs)
	cfg := cfgs[f.Pkg]

	baseDir := cfg.GetTsCompilerOptions().BaseDir

	for _, src := range srcs {
		src = filepath.Clean(filepath.Join(f.Pkg, src))

		// Can be imported by full path
		specs := []string{src}

		// Can potentially be imported by baseDir
		rebasedSrc, err := filepath.Rel(baseDir, src)
		if err != nil {
			fmt.Printf("ERROR: %s\n", fmt.Errorf("tsconfig baseDir error %e", err))
		} else if rebasedSrc != src {
			specs = append(specs, rebasedSrc)
		}

		for _, spec := range specs {
			spec = stripImportExtensions(spec)

			provides = append(provides, resolve.ImportSpec{
				Lang: languageName,
				Imp:  spec,
			})

			// Index files can also be imported using only the directory
			if isIndexFile(src) {
				provides = append(provides, resolve.ImportSpec{
					Lang: languageName,
					Imp:  strings.TrimRight(filepath.Dir(spec), indexFileName),
				})
			}
		}
	}

	DEBUG("PROVIDES(%q): %v", r.Name(), provides)

	if len(provides) == 0 {
		return nil
	}

	return provides
}

// Embeds returns a list of labels of rules that the given rule embeds. If
// a rule is embedded by another importable rule of the same language, only
// the embedding rule will be indexed. The embedding rule will inherit
// the imports of the embedded rule.
func (ts *TypeScript) Embeds(r *rule.Rule, from label.Label) []label.Label {
	// TODO(jbedard): implement.
	return make([]label.Label, 0)
}

// Resolve translates imported libraries for a given rule into Bazel
// dependencies. Information about imported libraries is returned for each
// rule generated by language.GenerateRules in
// language.GenerateResult.Imports. Resolve generates a "deps" attribute (or
// the appropriate language-specific equivalent) for each import according to
// language-specific rules and heuristics.
func (ts *TypeScript) Resolve(
	c *config.Config,
	ix *resolve.RuleIndex,
	rc *repo.RemoteCache,
	r *rule.Rule,
	modulesRaw interface{},
	from label.Label,
) {
	cfgs := c.Exts[languageName].(Configs)
	cfg := cfgs[from.Pkg]

	deps := ts.ResolveModuleDeps(c, ix, modulesRaw.(*treeset.Set), from)

	DEBUG("RESOLVED(%s): %s => %s", from.Name, modulesRaw.(*treeset.Set).Values(), deps.Values())

	if !deps.Empty() {
		r.SetAttr("deps", convertDependencySetToExpr(deps))
	}

	tsconfig := cfg.GetTsConfigRule()
	if tsconfig != "" {
		r.SetAttr("tsconfig", tsconfig)
	}
}

func (ts *TypeScript) ResolveModuleDeps(
	c *config.Config,
	ix *resolve.RuleIndex,
	modules *treeset.Set,
	from label.Label,
) *treeset.Set {
	deps := treeset.NewWithStringComparator()

	cfgs := c.Exts[languageName].(Configs)
	cfg := cfgs[from.Pkg]
	hasFatalError := false

	it := modules.Iterator()
	for it.Next() {
		mod := it.Value().(ImportStatement)
		imp := resolve.ImportSpec{
			Lang: languageName,
			Imp:  mod.Path,
		}

		DEBUG("RESOLVE: %q from %q", imp.Imp, from.Name)

		if override, ok := resolve.FindRuleWithOverride(c, imp, languageName); ok {
			if override.Repo == "" {
				override.Repo = from.Repo
			}
			if !override.Equal(from) {
				if override.Repo == from.Repo {
					override.Repo = ""
				}
				dep := override.String()
				deps.Add(dep)
				if EXPLAIN_DEPENDENCY == dep {
					log.Printf("Explaining dependency (%s): "+
						"in the target %q, the file %q imports %q, "+
						"which resolves using the \"gazelle:resolve\" directive.\n",
						EXPLAIN_DEPENDENCY, from.String(), mod.SourcePath, mod.Path)
				}
			}
		} else if matches := ix.FindRulesByImportWithConfig(c, imp, languageName); len(matches) > 0 {
			filteredMatches := make([]resolve.FindResult, 0, len(matches))
			for _, match := range matches {
				// Prevent from adding itself as a dependency.
				if !match.IsSelfImport(from) {
					filteredMatches = append(filteredMatches, match)
				}
			}

			DEBUG("MATCHES(%q): %s", from.Name, filteredMatches)

			if len(filteredMatches) == 1 {
				matchLabel := filteredMatches[0].Label.Rel(from.Repo, from.Pkg)
				dep := matchLabel.String()
				deps.Add(dep)
				if EXPLAIN_DEPENDENCY == dep {
					log.Printf("Explaining dependency (%s): "+
						"in the target %q, the file %q imports %q, "+
						"which resolves from the first-party indexed labels.\n",
						EXPLAIN_DEPENDENCY, from.String(), mod.SourcePath, mod.Path)
				}
			} else if len(filteredMatches) > 1 {
				err := fmt.Errorf(
					"multiple targets (%s) may be imported with %q in %q "+
						"- this must be fixed using the \"gazelle:resolve\" directive",
					targetListFromResults(filteredMatches), mod.Path, mod.SourcePath)
				log.Println("ERROR: ", err)
				hasFatalError = true
			}
		} else if pkg, found := ts.GetNamedPackage(mod.Path); found {
			deps.Add(pkg)
			if EXPLAIN_DEPENDENCY == pkg {
				log.Printf("Explaining dependency (%s): "+
					"in the target %q, the file %q imports %q, "+
					"which resolves from the package declared at %q.\n",
					EXPLAIN_DEPENDENCY, from.String(), mod.SourcePath, mod.Path, pkg)
			}
		} else if pkg, found := ts.GetImportableFile(mod.Path); found {
			deps.Add(pkg)
			if EXPLAIN_DEPENDENCY == pkg {
				log.Printf("Explaining dependency (%s): "+
					"in the target %q, the file %q imports %q, "+
					"which resolves from the package declared at %q.\n",
					EXPLAIN_DEPENDENCY, from.String(), mod.SourcePath, mod.Path, pkg)
			}
		} else if pkg, found := cfg.GetNpmPackage(mod.Path); found {
			deps.Add(pkg)
			if EXPLAIN_DEPENDENCY == pkg {
				log.Printf("Explaining dependency (%s): "+
					"in the target %q, the file %q imports %q, "+
					"which resolves from the third-party package %q.\n",
					EXPLAIN_DEPENDENCY, from.String(), mod.SourcePath, mod.Path, pkg)
			}

			// A package might also have a @types package, include it if the source file is type-checked.
			if typePkg, typeFound := cfg.GetNpmPackage("@types/" + mod.Path); typeFound {
				deps.Add(typePkg)
			}
		} else if typePkg, typeFound := cfg.GetNpmPackage("@types/" + mod.Path); typeFound {
			deps.Add(typePkg)
			if EXPLAIN_DEPENDENCY == typePkg {
				log.Printf("Explaining dependency (%s): "+
					"in the target %q, the file %q imports %q, "+
					"which resolves from the third-party @types package %q.\n",
					EXPLAIN_DEPENDENCY, from.String(), mod.SourcePath, mod.Path, typePkg)
			}
		} else if cfg.EnvironmentType() == EnvironmentNode && isNodeImport(mod.Path) {
			// If this is a ts file importing a native node library include @types/node if it is available
			if typePkg, typeFound := cfg.GetNpmPackage("@types/node"); typeFound {
				deps.Add(typePkg)
			}
		} else if cfg.ValidateImportStatements() {
			err := fmt.Errorf(
				"Import %[1]q from %[2]q is an unknown dependency. Possible solutions:\n"+
					"\t1. Instruct Gazelle to resolve to a known dependency using the gazelle:resolve directive.\n"+
					"\t2. Ignore the dependency with a comment '# gazelle:%[3]s %[1]s' in the BUILD file",
				mod.Path, mod.SourcePath, IgnoreImportsDirective,
			)
			log.Printf("ERROR: Failed to validate dependencies for target %q. %v", from.String(), err)
			hasFatalError = true
		}
	}

	if hasFatalError {
		os.Exit(1)
	}

	return deps
}

// targetListFromResults returns a string with the human-readable list of
// targets contained in the given results.
func targetListFromResults(results []resolve.FindResult) string {
	list := make([]string, len(results))
	for i, result := range results {
		list[i] = result.Label.String()
	}
	return strings.Join(list, ", ")
}

// convertDependencySetToExpr converts the given set of dependencies to an
// expression to be used in the deps attribute.
func convertDependencySetToExpr(set *treeset.Set) bzl.Expr {
	deps := make([]bzl.Expr, set.Size())
	it := set.Iterator()
	for it.Next() {
		dep := it.Value().(string)
		deps[it.Index()] = &bzl.StringExpr{Value: dep}
	}
	return &bzl.ListExpr{List: deps}
}
