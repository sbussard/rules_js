"@generated by @aspect_rules_js//js/private:translate_pnpm_lock.bzl from pnpm lock file @//:pnpm-lock.yaml"

load("@aspect_rules_js//js/private:pnpm_utils.bzl", _pnpm_utils = "pnpm_utils")
load("@bazel_skylib//lib:paths.bzl", _paths = "paths")
load("@npm__at_aspect-test_a__5.0.0__links//:link_js_package.bzl", link_0 = "link_js_package")
load("@npm__at_aspect-test_b__5.0.0__links//:link_js_package.bzl", link_1 = "link_js_package")
load("@npm__at_aspect-test_c__1.0.0__links//:link_js_package.bzl", link_2 = "link_js_package")
load("@npm__at_aspect-test_c__2.0.0__links//:link_js_package.bzl", link_3 = "link_js_package")
load("@npm__at_aspect-test_d__2.0.0__at_aspect-test_c_1.0.0__links//:link_js_package.bzl", link_4 = "link_js_package")
load("@npm__at_aspect-test_d__2.0.0__at_aspect-test_c_2.0.0__links//:link_js_package.bzl", link_5 = "link_js_package")
load("@npm__at_gregmagolan_test-a__0.0.1__links//:link_js_package.bzl", link_6 = "link_js_package")
load("@npm__at_gregmagolan_test-b__0.0.2__links//:link_js_package.bzl", link_7 = "link_js_package")
load("@npm__at_polka_url__1.0.0-next.21__links//:link_js_package.bzl", link_8 = "link_js_package")
load("@npm__at_rollup_plugin-commonjs__21.1.0__rollup_2.70.2__links//:link_js_package.bzl", link_9 = "link_js_package")
load("@npm__at_rollup_pluginutils__3.1.0__rollup_2.70.2__links//:link_js_package.bzl", link_10 = "link_js_package")
load("@npm__at_types_estree__0.0.39__links//:link_js_package.bzl", link_11 = "link_js_package")
load("@npm__at_types_estree__0.0.51__links//:link_js_package.bzl", link_12 = "link_js_package")
load("@npm__at_types_node__16.11.36__links//:link_js_package.bzl", link_13 = "link_js_package")
load("@npm__at_ungap_promise-all-settled__1.1.2__links//:link_js_package.bzl", link_14 = "link_js_package")
load("@npm__acorn-walk__8.2.0__links//:link_js_package.bzl", link_15 = "link_js_package")
load("@npm__acorn__8.7.1__links//:link_js_package.bzl", link_16 = "link_js_package")
load("@npm__ansi-colors__4.1.1__links//:link_js_package.bzl", link_17 = "link_js_package")
load("@npm__ansi-regex__5.0.1__links//:link_js_package.bzl", link_18 = "link_js_package")
load("@npm__ansi-styles__4.3.0__links//:link_js_package.bzl", link_19 = "link_js_package")
load("@npm__anymatch__3.1.2__links//:link_js_package.bzl", link_20 = "link_js_package")
load("@npm__argparse__2.0.1__links//:link_js_package.bzl", link_21 = "link_js_package")
load("@npm__balanced-match__1.0.2__links//:link_js_package.bzl", link_22 = "link_js_package")
load("@npm__binary-extensions__2.2.0__links//:link_js_package.bzl", link_23 = "link_js_package")
load("@npm__brace-expansion__1.1.11__links//:link_js_package.bzl", link_24 = "link_js_package")
load("@npm__brace-expansion__2.0.1__links//:link_js_package.bzl", link_25 = "link_js_package")
load("@npm__braces__3.0.2__links//:link_js_package.bzl", link_26 = "link_js_package")
load("@npm__browser-stdout__1.3.1__links//:link_js_package.bzl", link_27 = "link_js_package")
load("@npm__bufferutil__4.0.1__links//:link_js_package.bzl", link_28 = "link_js_package")
load("@npm__camelcase__6.3.0__links//:link_js_package.bzl", link_29 = "link_js_package")
load("@npm__chalk__4.1.2__links//:link_js_package.bzl", link_30 = "link_js_package")
load("@npm__charenc__0.0.2__links//:link_js_package.bzl", link_31 = "link_js_package")
load("@npm__chokidar__3.5.3__links//:link_js_package.bzl", link_32 = "link_js_package")
load("@npm__cliui__7.0.4__links//:link_js_package.bzl", link_33 = "link_js_package")
load("@npm__color-convert__2.0.1__links//:link_js_package.bzl", link_34 = "link_js_package")
load("@npm__color-name__1.1.4__links//:link_js_package.bzl", link_35 = "link_js_package")
load("@npm__commander__7.2.0__links//:link_js_package.bzl", link_36 = "link_js_package")
load("@npm__commondir__1.0.1__links//:link_js_package.bzl", link_37 = "link_js_package")
load("@npm__concat-map__0.0.1__links//:link_js_package.bzl", link_38 = "link_js_package")
load("@npm__crypt__0.0.2__links//:link_js_package.bzl", link_39 = "link_js_package")
load("@npm__debug__2.6.9__links//:link_js_package.bzl", link_40 = "link_js_package")
load("@npm__debug__4.3.4__links//:link_js_package.bzl", link_41 = "link_js_package")
load("@npm__debug__4.3.4__supports-color_8.1.1__links//:link_js_package.bzl", link_42 = "link_js_package")
load("@npm__decamelize__4.0.0__links//:link_js_package.bzl", link_43 = "link_js_package")
load("@npm__dequal__2.0.2__links//:link_js_package.bzl", link_44 = "link_js_package")
load("@npm__diff__5.0.0__links//:link_js_package.bzl", link_45 = "link_js_package")
load("@npm__diff__5.1.0__links//:link_js_package.bzl", link_46 = "link_js_package")
load("@npm__duplexer__0.1.2__links//:link_js_package.bzl", link_47 = "link_js_package")
load("@npm__emoji-regex__8.0.0__links//:link_js_package.bzl", link_48 = "link_js_package")
load("@npm__esbuild-android-64__0.14.38__links//:link_js_package.bzl", link_49 = "link_js_package")
load("@npm__esbuild-android-arm64__0.14.38__links//:link_js_package.bzl", link_50 = "link_js_package")
load("@npm__esbuild-darwin-64__0.14.38__links//:link_js_package.bzl", link_51 = "link_js_package")
load("@npm__esbuild-darwin-arm64__0.14.38__links//:link_js_package.bzl", link_52 = "link_js_package")
load("@npm__esbuild-freebsd-64__0.14.38__links//:link_js_package.bzl", link_53 = "link_js_package")
load("@npm__esbuild-freebsd-arm64__0.14.38__links//:link_js_package.bzl", link_54 = "link_js_package")
load("@npm__esbuild-linux-32__0.14.38__links//:link_js_package.bzl", link_55 = "link_js_package")
load("@npm__esbuild-linux-64__0.14.38__links//:link_js_package.bzl", link_56 = "link_js_package")
load("@npm__esbuild-linux-arm__0.14.38__links//:link_js_package.bzl", link_57 = "link_js_package")
load("@npm__esbuild-linux-arm64__0.14.38__links//:link_js_package.bzl", link_58 = "link_js_package")
load("@npm__esbuild-linux-mips64le__0.14.38__links//:link_js_package.bzl", link_59 = "link_js_package")
load("@npm__esbuild-linux-ppc64le__0.14.38__links//:link_js_package.bzl", link_60 = "link_js_package")
load("@npm__esbuild-linux-riscv64__0.14.38__links//:link_js_package.bzl", link_61 = "link_js_package")
load("@npm__esbuild-linux-s390x__0.14.38__links//:link_js_package.bzl", link_62 = "link_js_package")
load("@npm__esbuild-netbsd-64__0.14.38__links//:link_js_package.bzl", link_63 = "link_js_package")
load("@npm__esbuild-openbsd-64__0.14.38__links//:link_js_package.bzl", link_64 = "link_js_package")
load("@npm__esbuild-sunos-64__0.14.38__links//:link_js_package.bzl", link_65 = "link_js_package")
load("@npm__esbuild-windows-32__0.14.38__links//:link_js_package.bzl", link_66 = "link_js_package")
load("@npm__esbuild-windows-64__0.14.38__links//:link_js_package.bzl", link_67 = "link_js_package")
load("@npm__esbuild-windows-arm64__0.14.38__links//:link_js_package.bzl", link_68 = "link_js_package")
load("@npm__esbuild__0.14.38__links//:link_js_package.bzl", link_69 = "link_js_package")
load("@npm__escalade__3.1.1__links//:link_js_package.bzl", link_70 = "link_js_package")
load("@npm__escape-string-regexp__4.0.0__links//:link_js_package.bzl", link_71 = "link_js_package")
load("@npm__estree-walker__1.0.1__links//:link_js_package.bzl", link_72 = "link_js_package")
load("@npm__estree-walker__2.0.2__links//:link_js_package.bzl", link_73 = "link_js_package")
load("@npm__fill-range__7.0.1__links//:link_js_package.bzl", link_74 = "link_js_package")
load("@npm__find-up__5.0.0__links//:link_js_package.bzl", link_75 = "link_js_package")
load("@npm__flat__5.0.2__links//:link_js_package.bzl", link_76 = "link_js_package")
load("@npm__fs.realpath__1.0.0__links//:link_js_package.bzl", link_77 = "link_js_package")
load("@npm__fsevents__2.3.2__links//:link_js_package.bzl", link_78 = "link_js_package")
load("@npm__function-bind__1.1.1__links//:link_js_package.bzl", link_79 = "link_js_package")
load("@npm__get-caller-file__2.0.5__links//:link_js_package.bzl", link_80 = "link_js_package")
load("@npm__glob-parent__5.1.2__links//:link_js_package.bzl", link_81 = "link_js_package")
load("@npm__glob__7.2.0__links//:link_js_package.bzl", link_82 = "link_js_package")
load("@npm__glob__7.2.3__links//:link_js_package.bzl", link_83 = "link_js_package")
load("@npm__gzip-size__6.0.0__links//:link_js_package.bzl", link_84 = "link_js_package")
load("@npm__has-flag__4.0.0__links//:link_js_package.bzl", link_85 = "link_js_package")
load("@npm__has__1.0.3__links//:link_js_package.bzl", link_86 = "link_js_package")
load("@npm__he__1.2.0__links//:link_js_package.bzl", link_87 = "link_js_package")
load("@npm__inflight__1.0.6__links//:link_js_package.bzl", link_88 = "link_js_package")
load("@npm__inherits__2.0.4__links//:link_js_package.bzl", link_89 = "link_js_package")
load("@npm__is-binary-path__2.1.0__links//:link_js_package.bzl", link_90 = "link_js_package")
load("@npm__is-buffer__1.1.6__links//:link_js_package.bzl", link_91 = "link_js_package")
load("@npm__is-core-module__2.9.0__links//:link_js_package.bzl", link_92 = "link_js_package")
load("@npm__is-extglob__2.1.1__links//:link_js_package.bzl", link_93 = "link_js_package")
load("@npm__is-fullwidth-code-point__3.0.0__links//:link_js_package.bzl", link_94 = "link_js_package")
load("@npm__is-glob__4.0.3__links//:link_js_package.bzl", link_95 = "link_js_package")
load("@npm__is-number__7.0.0__links//:link_js_package.bzl", link_96 = "link_js_package")
load("@npm__is-plain-obj__2.1.0__links//:link_js_package.bzl", link_97 = "link_js_package")
load("@npm__is-reference__1.2.1__links//:link_js_package.bzl", link_98 = "link_js_package")
load("@npm__is-unicode-supported__0.1.0__links//:link_js_package.bzl", link_99 = "link_js_package")
load("@npm__js-tokens__4.0.0__links//:link_js_package.bzl", link_100 = "link_js_package")
load("@npm__js-yaml__4.1.0__links//:link_js_package.bzl", link_101 = "link_js_package")
load("@npm__kleur__4.1.4__links//:link_js_package.bzl", link_102 = "link_js_package")
load("@npm__locate-path__6.0.0__links//:link_js_package.bzl", link_103 = "link_js_package")
load("@npm__lodash__4.17.21__links//:link_js_package.bzl", link_104 = "link_js_package")
load("@npm__log-symbols__4.1.0__links//:link_js_package.bzl", link_105 = "link_js_package")
load("@npm__loose-envify__1.4.0__links//:link_js_package.bzl", link_106 = "link_js_package")
load("@npm__magic-string__0.25.9__links//:link_js_package.bzl", link_107 = "link_js_package")
load("@npm__md5__2.3.0__links//:link_js_package.bzl", link_108 = "link_js_package")
load("@npm__minimatch__3.1.2__links//:link_js_package.bzl", link_109 = "link_js_package")
load("@npm__minimatch__5.0.1__links//:link_js_package.bzl", link_110 = "link_js_package")
load("@npm__minimist__1.2.6__links//:link_js_package.bzl", link_111 = "link_js_package")
load("@npm__mkdirp__0.5.6__links//:link_js_package.bzl", link_112 = "link_js_package")
load("@npm__mobx-react-lite__3.4.0__mobx_6.3.0_react_17.0.2__links//:link_js_package.bzl", link_113 = "link_js_package")
load("@npm__mobx-react__7.3.0__mobx_6.3.0_react_17.0.2__links//:link_js_package.bzl", link_114 = "link_js_package")
load("@npm__mobx__6.3.0__links//:link_js_package.bzl", link_115 = "link_js_package")
load("@npm__mocha-junit-reporter__2.0.2__mocha_10.0.0__links//:link_js_package.bzl", link_116 = "link_js_package")
load("@npm__mocha-multi-reporters__1.5.1__mocha_10.0.0__links//:link_js_package.bzl", link_117 = "link_js_package")
load("@npm__mocha__10.0.0__links//:link_js_package.bzl", link_118 = "link_js_package")
load("@npm__mri__1.2.0__links//:link_js_package.bzl", link_119 = "link_js_package")
load("@npm__mrmime__1.0.0__links//:link_js_package.bzl", link_120 = "link_js_package")
load("@npm__ms__2.0.0__links//:link_js_package.bzl", link_121 = "link_js_package")
load("@npm__ms__2.1.2__links//:link_js_package.bzl", link_122 = "link_js_package")
load("@npm__ms__2.1.3__links//:link_js_package.bzl", link_123 = "link_js_package")
load("@npm__nanoid__3.3.3__links//:link_js_package.bzl", link_124 = "link_js_package")
load("@npm__node-gyp-build__3.7.0__links//:link_js_package.bzl", link_125 = "link_js_package")
load("@npm__normalize-path__3.0.0__links//:link_js_package.bzl", link_126 = "link_js_package")
load("@npm__object-assign__4.1.1__links//:link_js_package.bzl", link_127 = "link_js_package")
load("@npm__once__1.4.0__links//:link_js_package.bzl", link_128 = "link_js_package")
load("@npm__opener__1.5.2__links//:link_js_package.bzl", link_129 = "link_js_package")
load("@npm__p-limit__3.1.0__links//:link_js_package.bzl", link_130 = "link_js_package")
load("@npm__p-locate__5.0.0__links//:link_js_package.bzl", link_131 = "link_js_package")
load("@npm__path-exists__4.0.0__links//:link_js_package.bzl", link_132 = "link_js_package")
load("@npm__path-is-absolute__1.0.1__links//:link_js_package.bzl", link_133 = "link_js_package")
load("@npm__path-parse__1.0.7__links//:link_js_package.bzl", link_134 = "link_js_package")
load("@npm__picomatch__2.3.1__links//:link_js_package.bzl", link_135 = "link_js_package")
load("@npm__randombytes__2.1.0__links//:link_js_package.bzl", link_136 = "link_js_package")
load("@npm__react__17.0.2__links//:link_js_package.bzl", link_137 = "link_js_package")
load("@npm__readdirp__3.6.0__links//:link_js_package.bzl", link_138 = "link_js_package")
load("@npm__require-directory__2.1.1__links//:link_js_package.bzl", link_139 = "link_js_package")
load("@npm__resolve__1.22.0__links//:link_js_package.bzl", link_140 = "link_js_package")
load("@npm__rollup__2.70.2__links//:link_js_package.bzl", link_141 = "link_js_package")
load("@npm__sade__1.8.1__links//:link_js_package.bzl", link_142 = "link_js_package")
load("@npm__safe-buffer__5.2.1__links//:link_js_package.bzl", link_143 = "link_js_package")
load("@npm__serialize-javascript__6.0.0__links//:link_js_package.bzl", link_144 = "link_js_package")
load("@npm__sirv__1.0.19__links//:link_js_package.bzl", link_145 = "link_js_package")
load("@npm__sourcemap-codec__1.4.8__links//:link_js_package.bzl", link_146 = "link_js_package")
load("@npm__string-width__4.2.3__links//:link_js_package.bzl", link_147 = "link_js_package")
load("@npm__strip-ansi__6.0.1__links//:link_js_package.bzl", link_148 = "link_js_package")
load("@npm__strip-json-comments__3.1.1__links//:link_js_package.bzl", link_149 = "link_js_package")
load("@npm__supports-color__7.2.0__links//:link_js_package.bzl", link_150 = "link_js_package")
load("@npm__supports-color__8.1.1__links//:link_js_package.bzl", link_151 = "link_js_package")
load("@npm__supports-preserve-symlinks-flag__1.0.0__links//:link_js_package.bzl", link_152 = "link_js_package")
load("@npm__to-regex-range__5.0.1__links//:link_js_package.bzl", link_153 = "link_js_package")
load("@npm__totalist__1.1.0__links//:link_js_package.bzl", link_154 = "link_js_package")
load("@npm__typescript__4.7.2__links//:link_js_package.bzl", link_155 = "link_js_package")
load("@npm__uvu__0.5.3__links//:link_js_package.bzl", link_156 = "link_js_package")
load("@npm__webpack-bundle-analyzer__4.5.0__bufferutil_4.0.1__links//:link_js_package.bzl", link_157 = "link_js_package")
load("@npm__workerpool__6.2.1__links//:link_js_package.bzl", link_158 = "link_js_package")
load("@npm__wrap-ansi__7.0.0__links//:link_js_package.bzl", link_159 = "link_js_package")
load("@npm__wrappy__1.0.2__links//:link_js_package.bzl", link_160 = "link_js_package")
load("@npm__ws__7.5.8__bufferutil_4.0.1__links//:link_js_package.bzl", link_161 = "link_js_package")
load("@npm__xml__1.0.1__links//:link_js_package.bzl", link_162 = "link_js_package")
load("@npm__y18n__5.0.8__links//:link_js_package.bzl", link_163 = "link_js_package")
load("@npm__yargs-parser__20.2.4__links//:link_js_package.bzl", link_164 = "link_js_package")
load("@npm__yargs-unparser__2.0.0__links//:link_js_package.bzl", link_165 = "link_js_package")
load("@npm__yargs__16.2.0__links//:link_js_package.bzl", link_166 = "link_js_package")
load("@npm__yocto-queue__0.1.0__links//:link_js_package.bzl", link_167 = "link_js_package")

# buildifier: disable=unnamed-macro
def link_js_packages():
    "Generated list of link_js_package() target generators and first party linked packages corresponding to the packages in @//:pnpm-lock.yaml"
    root_path = ""
    importer_paths = [".", "examples", "examples/npm_deps"]
    is_root = native.package_name() == root_path
    is_direct = False
    for import_path in importer_paths:
        importer_package_path = _paths.normalize(_paths.join(root_path, import_path))
        if importer_package_path == ".":
            importer_package_path = ""
        if importer_package_path == native.package_name():
            is_direct = True
    if not is_root and not is_direct:
        msg = "The link_js_packages() macro loaded from @npm//:defs.bzl and called in bazel package '%s' may only be called in the bazel package(s) corresponding to the root package '' and packages corresponding to importer paths ['.', 'examples', 'examples/npm_deps']" % native.package_name()
        fail(msg)

    link_0(False)
    link_1(False)
    link_2(False)
    link_3(False)
    link_4(False)
    link_5(False)
    link_6(False)
    link_7(False)
    link_8(False)
    link_9(False)
    link_10(False)
    link_11(False)
    link_12(False)
    link_13(False)
    link_14(False)
    link_15(False)
    link_16(False)
    link_17(False)
    link_18(False)
    link_19(False)
    link_20(False)
    link_21(False)
    link_22(False)
    link_23(False)
    link_24(False)
    link_25(False)
    link_26(False)
    link_27(False)
    link_28(False)
    link_29(False)
    link_30(False)
    link_31(False)
    link_32(False)
    link_33(False)
    link_34(False)
    link_35(False)
    link_36(False)
    link_37(False)
    link_38(False)
    link_39(False)
    link_40(False)
    link_41(False)
    link_42(False)
    link_43(False)
    link_44(False)
    link_45(False)
    link_46(False)
    link_47(False)
    link_48(False)
    link_49(False)
    link_50(False)
    link_51(False)
    link_52(False)
    link_53(False)
    link_54(False)
    link_55(False)
    link_56(False)
    link_57(False)
    link_58(False)
    link_59(False)
    link_60(False)
    link_61(False)
    link_62(False)
    link_63(False)
    link_64(False)
    link_65(False)
    link_66(False)
    link_67(False)
    link_68(False)
    link_69(False)
    link_70(False)
    link_71(False)
    link_72(False)
    link_73(False)
    link_74(False)
    link_75(False)
    link_76(False)
    link_77(False)
    link_78(False)
    link_79(False)
    link_80(False)
    link_81(False)
    link_82(False)
    link_83(False)
    link_84(False)
    link_85(False)
    link_86(False)
    link_87(False)
    link_88(False)
    link_89(False)
    link_90(False)
    link_91(False)
    link_92(False)
    link_93(False)
    link_94(False)
    link_95(False)
    link_96(False)
    link_97(False)
    link_98(False)
    link_99(False)
    link_100(False)
    link_101(False)
    link_102(False)
    link_103(False)
    link_104(False)
    link_105(False)
    link_106(False)
    link_107(False)
    link_108(False)
    link_109(False)
    link_110(False)
    link_111(False)
    link_112(False)
    link_113(False)
    link_114(False)
    link_115(False)
    link_116(False)
    link_117(False)
    link_118(False)
    link_119(False)
    link_120(False)
    link_121(False)
    link_122(False)
    link_123(False)
    link_124(False)
    link_125(False)
    link_126(False)
    link_127(False)
    link_128(False)
    link_129(False)
    link_130(False)
    link_131(False)
    link_132(False)
    link_133(False)
    link_134(False)
    link_135(False)
    link_136(False)
    link_137(False)
    link_138(False)
    link_139(False)
    link_140(False)
    link_141(False)
    link_142(False)
    link_143(False)
    link_144(False)
    link_145(False)
    link_146(False)
    link_147(False)
    link_148(False)
    link_149(False)
    link_150(False)
    link_151(False)
    link_152(False)
    link_153(False)
    link_154(False)
    link_155(False)
    link_156(False)
    link_157(False)
    link_158(False)
    link_159(False)
    link_160(False)
    link_161(False)
    link_162(False)
    link_163(False)
    link_164(False)
    link_165(False)
    link_166(False)
    link_167(False)

def package(name, import_path = "."):
    package_path = _paths.normalize(_paths.join("", import_path))
    if package_path == ".":
        package_path = ""
    return Label("@//{package_path}:jsp__{bazel_name}".format(
        package_path = package_path,
        bazel_name = _pnpm_utils.bazel_name(name),
    ))

def package_dir(name, import_path = "."):
    package_path = _paths.normalize(_paths.join("", import_path))
    if package_path == ".":
        package_path = ""
    return Label("@//{package_path}:jsp__{bazel_name}__dir".format(
        package_path = package_path,
        bazel_name = _pnpm_utils.bazel_name(name),
    ))
