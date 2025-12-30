(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bm-annotate-on-create nil)
 '(bm-buffer-persistence t)
 '(bm-cycle-all-buffers nil)
 '(bm-highlight-style 'bm-highlight-line-and-fringe)
 '(bm-modeline-display-end-space nil)
 '(bm-modeline-display-total t)
 '(bm-modeline-display-when-empty t)
 '(bm-recenter t)
 '(bm-repository-size 10000)
 '(bm-verbosity-level 2)
 '(c++-mode-hook nil)
 '(c-backslash-column 'set-from-style)
 '(c-backslash-max-column 120)
 '(c-default-style
    '((c-mode . "artec") (c++-mode . "artec") (java-mode . "java")
       (awk-mode . "awk") (other . "artec")))
 '(c-report-syntactic-errors nil)
 '(clang-format+-offset-modified-region 5)
 '(clang-format-style "file")
 '(column-number-mode t)
 '(company-auto-commit ''company-explicit-action-p)
 '(company-auto-complete ''company-explicit-action-p)
 '(company-backends
    '(company-yasnippet company-bbdb company-nxml company-css
       company-clang company-cmake company-capf
       (company-dabbrev-code company-gtags company-etags
         company-keywords)
       company-oddmuse company-files company-dabbrev))
 '(company-c-headers-path-system
    '("/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/"
       "/usr/include/c++/5.2.0/" "/usr/include/" "/usr/local/include/"
       "/home/paulus/projects/artecsdk/ext/3dproc/include"
       "/home/paulus/projects/artecsdk/ext/cameras/include"
       "/home/paulus/projects/artecsdk/ext/config-enumerator/include"
       "/home/paulus/projects/artecsdk/ext/engine/include"
       "/home/paulus/projects/artecsdk/ext/flyuart/include"
       "/home/paulus/projects/artecsdk/ext/simplegl/examples/MarchingCubes/include"
       "/home/paulus/projects/artecsdk/ext/simplegl/examples/QtGUI/include"
       "/home/paulus/projects/artecsdk/ext/tunecols/include"
       "/home/paulus/projects/artecsdk/ext/virtualization-kit/include"
       "/home/paulus/projects/artecsdk/ext/3drec/include"
       "/home/paulus/projects/artecsdk/algorithms/include"
       "/home/paulus/projects/artecsdk/base/include"
       "/home/paulus/projects/artecsdk/base/tref-sample/include"
       "/home/paulus/projects/artecsdk/capturing/include"
       "/home/paulus/projects/artecsdk/scanning/include"
       "/home/paulus/projects/app-easy-scan/libs/es-core/defs"
       "/home/paulus/projects/lib-rendering/a3d" "/usr/include/qt"))
 '(company-c-headers-path-user '("."))
 '(company-clang-arguments
    '("-std=c++14" "-I/home/paulus/projects/artecsdk/ext/3dproc/include"
       "-I/home/paulus/projects/artecsdk/ext/cameras/include"
       "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include"
       "-I/home/paulus/projects/artecsdk/ext/engine/include"
       "-I/home/paulus/projects/artecsdk/ext/flyuart/include"
       "-I/home/paulus/projects/artecsdk/ext/tunecols/include"
       "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include"
       "-I/home/paulus/projects/artecsdk/ext/3drec/include"
       "-I/home/paulus/projects/artecsdk/algorithms/include"
       "-I/home/paulus/projects/artecsdk/base/include"
       "-I/home/paulus/projects/artecsdk/base/tref-sample/include"
       "-I/home/paulus/projects/artecsdk/capturing/include"
       "-I/home/paulus/projects/artecsdk/scanning/include"
       "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs"
       "-I/home/paulus/projects/lib-rendering/a3d" "-I/usr/include/qt"))
 '(company-completion-cancelled-hook nil)
 '(company-idle-delay 1.5)
 '(company-insertion-on-trigger ''company-explicit-action-p)
 '(company-racer-executable "racer")
 '(company-selection-wrap-around t)
 '(company-semantic-begin-after-member-access nil)
 '(company-tooltip-flip-when-above t)
 '(company-tooltip-idle-delay 1.5)
 '(company-tooltip-minimum-width 8)
 '(company-tooltip-offset-display 'lines)
 '(company-ycmd-enable-fuzzy-matching nil)
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-environment '("PATH=/usr/bin:/usr/local/bin:/opt/cuda/bin/"))
 '(compilation-error-regexp-alist
    '(cargo rustc-panics rustc-colon rustc rustc-refs
       typescript-nglint-warning typescript-nglint-error
       typescript-tslint typescript-tsc absoft ada aix ant bash
       borland python-tracebacks-and-caml cmake cmake-info comma msft
       edg-1 edg-2 epc ftnchek gradle-kotlin gradle-kotlin-legacy
       gradle-android iar ibm irix java javac jikes-file maven
       jikes-line clang-include gcc-include ruby-Test::Unit lua
       lua-stack gmake gnu cucumber lcc makepp mips-1 mips-2 oracle
       perl php rxp shellcheck sparc-pascal-file sparc-pascal-line
       sparc-pascal-example sun sun-ada watcom 4bsd gcov-file
       gcov-header gcov-nomark gcov-called-line gcov-never-called
       perl--Pod::Checker perl--Test perl--Test2 perl--Test::Harness
       weblint guile-file guile-line typescript-tsc-plain
       typescript-tsc-pretty pyright-error))
 '(compilation-scroll-output 'first-error)
 '(compilation-search-path
    '(nil "/home/paulus/projects/pkg-s2p/source-of-frames"
       "/home/paulus/projects/pkg-s2p/"))
 '(compilation-skip-threshold 2)
 '(compilation-skip-visited t)
 '(compile-command
    "cd ~/projects/ && time PATH=$PATH:$HOME/.cargo/bin:/opt/flutter-elinux/bin LANG= \\\12scons -f pkg-s2p/build-system/SConstruct -j9 --update-db \\\12--use-profile=spider2-pro/s2p-host \\\12--scan-dir=pkg-s2p --skip-dir=/home/paulus/projects/pkg-s2p/third-party/cdsdk/build-system/tests \\\12--module=s2p --module=s2p-dev-util")
 '(cursor-in-non-selected-windows nil)
 '(custom-safe-themes
    '("4ef489bd19f06c4784ad0a440b8dfe5ee32c761ccfa134830df119005feddf47"
       "c55b811819ce5868f43176bcbc23f8b569e495e1dd0f180beeba571649b9730b"
       "f364e75cdd1f0e6e6cf9db5c815712e28edb0f534909b13c95388d7f501ab0e0"
       "02ec9b95275c0f6b5d050c27017beacf55e6b69607759872271df070e573ceff"
       "b8035e71f1cfba8c9b35931c2e4953aa40aa998747a3a198480934b694ec3e94"
       "a51245cbca613c943213aceb3fbb638276b68ca37b9dbf08ddf422570bf88c2e"
       "e37044eff1939059a930158c43b3b2812a85f5104426ed619252bec773ac8cb9"
       "3aa586d937fc99992cd44d7d4aab284eeaf7323898e37e152d37ebc298229ebc"
       "55106d426099242e38daa86deabadb643313fbd84517326d2bfc48ab4d86458f"
       "0de269f129b765c9fe244c19c1ec9dfd6c66cee4179eb235aff1d3301e2121e0"
       "3d530d6dcdf26b4b2b68c18bfa8d8f927377a12cb75abf8768e0b818a19f782e"
       "cc371ea0ca0f879b99710b62dd3c9943fcc1c274efe45e9d2c578f9f93253930"
       "3c6e8fb18f82d2c4cf242c2e536b75eecd67257f95e73d618f98f0502fc81578"
       "165c7115443aabcc950ef1514a5c238c1b78cb743dc6df4f41a82a2d6e66c683"
       "5e6a55507bc922241a1fa50f095f15996493ef6d11c648fd7122ca83a577d717"
       "4b177ef60e53808453134546ff74656b2ded2bf7068a78467995255921b2ac5e"
       "31c7386bea6f51a5b799d8f456e08fc6dee5f59605c165562fc7c32a323b7f42"
       default))
 '(desktop-clear-preserve-buffers
    '("\\*scratch\\*" "\\*Messages\\*" "\\*server\\*" "\\*tramp/.+\\*"
       "\\*Warnings\\*" "\\*rustic-compilation\\*" "\\*lsp-log\\*"
       "\\*rls\\*" "\\*rls::stderr\\*" "\\*lsp-log:.+\\*"))
 '(desktop-load-locked-desktop t)
 '(desktop-path '("~/.emacs.d/"))
 '(desktop-save t)
 '(desktop-save-mode t)
 '(ede-project-directories '("/home/paulus/projects"))
 '(eldoc-minor-mode-string " ElDoc")
 '(eldoc-print-after-edit t)
 '(emojify-display-style 'image)
 '(emojify-emoji-styles '(unicode))
 '(flycheck-buffer-switch-check-intermediate-buffers nil)
 '(flycheck-check-syntax-automatically
    '(save idle-change idle-buffer-switch new-line mode-enabled))
 '(flycheck-checker-error-threshold 4096)
 '(flyspell-abbrev-p t)
 '(flyspell-before-incorrect-word-string nil)
 '(flyspell-default-dictionary nil)
 '(flyspell-sort-corrections t)
 '(global-semantic-decoration-mode nil)
 '(global-semantic-highlight-func-mode nil)
 '(global-semantic-mru-bookmark-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(global-whitespace-mode nil)
 '(graphviz-dot-preview-extension "svg")
 '(graphviz-dot-view-command "doted -Tsvg %s")
 '(graphviz-dot-view-edit-command t)
 '(grep-find-command
    '("find . -type f -not -name \"*~\" -exec grep --color=auto -nH --null -e  \\{\\} +"
       . 54))
 '(groovy-indent-offset 4)
 '(hide-ifdef-initially t)
 '(hide-ifdef-shadow t)
 '(indent-tabs-mode nil)
 '(irony-additional-clang-options
    '("-std=c++14" "-I/home/paulus/projects/artecsdk/ext/3dproc/include"
       "-I/home/paulus/projects/artecsdk/ext/cameras/include"
       "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include"
       "-I/home/paulus/projects/artecsdk/ext/engine/include"
       "-I/home/paulus/projects/artecsdk/ext/flyuart/include"
       "-I/home/paulus/projects/artecsdk/ext/tunecols/include"
       "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include"
       "-I/home/paulus/projects/artecsdk/ext/3drec/include"
       "-I/home/paulus/projects/artecsdk/algorithms/include"
       "-I/home/paulus/projects/artecsdk/base/include"
       "-I/home/paulus/projects/artecsdk/base/tref-sample/include"
       "-I/home/paulus/projects/artecsdk/capturing/include"
       "-I/home/paulus/projects/artecsdk/scanning/include"
       "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs"
       "-I/home/paulus/projects/lib-rendering/a3d" "-I/usr/include/qt"))
 '(jenkins-api-url
    "http://jenkins.artec-local:8080/job/Artec%203D%20Scanning%20SDK%20For%20Linux%20%28fast-build%29/api/xml")
 '(jenkins-login-url nil)
 '(js-indent-level 4)
 '(js2-strict-missing-semi-warning nil)
 '(lisp-indent-offset 2)
 '(lisp-interaction-mode-hook '(eldoc-mode))
 '(lsp-auto-guess-root nil)
 '(lsp-clangd-binary-path "/usr/bin/clangd")
 '(lsp-clangd-download-url
    "https://github.com/clangd/clangd/releases/download/15.0.0/clangd-linux-15.0.0.zip")
 '(lsp-clangd-version "16.0.0")
 '(lsp-clients-clangd-args
    '("--header-insertion-decorators=0" "--clang-tidy"
       "--pch-storage=disk" "-j=4"))
 '(lsp-dart-closing-labels-prefix "←")
 '(lsp-dart-closing-labels-size 0.8)
 '(lsp-dart-dap-debugger-path "")
 '(lsp-dart-flutter-sdk-dir "/home/paulus/.local/share/flutterup/")
 '(lsp-dart-project-root-discovery-strategies '(closest-pubspec lsp-root))
 '(lsp-dart-sdk-dir "/home/paulus/.local/share/flutterup/")
 '(lsp-dart-server-command '("dart" "language-server" "--diagnostic-port=8810"))
 '(lsp-glsl-executable '("glsl_analyzer" "--stdio"))
 '(lsp-groovy-classpath ["/usr/share/groovy/lib/"])
 '(lsp-groovy-server-file
    "/usr/share/java/groovy-language-server/groovy-language-server-all.jar")
 '(lsp-idle-delay 1.5)
 '(lsp-log-io t)
 '(lsp-prefer-flymake nil t)
 '(lsp-pylsp-plugins-flake8-exclude [])
 '(lsp-pylsp-plugins-flake8-filename [])
 '(lsp-pylsp-plugins-flake8-ignore ["D100" "D101" "D107"])
 '(lsp-pyright-extra-paths
    ["/home/paulus/projects/pkg-leopard/modules/python-common/rootfs-data/usr/local/bin"])
 '(lsp-pyright-langserver-command "basedpyright")
 '(lsp-ui-doc-alignment 'window)
 '(lsp-ui-doc-border "black")
 '(lsp-ui-doc-enable t)
 '(lsp-ui-doc-header nil)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-max-height 50)
 '(lsp-ui-doc-max-width 100)
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-doc-show-with-mouse nil)
 '(lsp-ui-doc-use-webkit t)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-flycheck-list-position 'bottom)
 '(lsp-ui-imenu-window-fix-width t)
 '(lsp-ui-sideline-actions-icon nil)
 '(lsp-ui-sideline-delay 2.0)
 '(lsp-ui-sideline-diagnostic-max-line-length 100)
 '(lsp-ui-sideline-diagnostic-max-lines 6)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-code-actions t)
 '(lsp-ui-sideline-show-hover t)
 '(lsp-ui-sideline-show-symbol t)
 '(lsp-ui-sideline-update-mode 'point)
 '(lsp-ui-sideline-wait-for-all-symbols nil)
 '(minimap-always-recenter t)
 '(mmm-submode-decoration-level 0)
 '(mode-line-compact 'long)
 '(mode-line-in-non-selected-windows t)
 '(mode-line-position-column-format '(""))
 '(nxml-slash-auto-complete-flag t)
 '(org-format-latex-header
    "\\documentclass{article}\12\\usepackage[usenames]{color}\12\12[DEFAULT-PACKAGES]\12[PACKAGES]\12\\pagestyle{empty}             % do not remove\12% The settings below are copied from fullpage.sty\12\\setlength{\\textwidth}{\\paperwidth}\12\\addtolength{\\textwidth}{-3cm}\12\\setlength{\\oddsidemargin}{1.5cm}\12\\addtolength{\\oddsidemargin}{-2.54cm}\12\\setlength{\\evensidemargin}{\\oddsidemargin}\12\\setlength{\\textheight}{\\paperheight}\12\\addtolength{\\textheight}{-\\headheight}\12\\addtolength{\\textheight}{-\\headsep}\12\\addtolength{\\textheight}{-\\footskip}\12\\addtolength{\\textheight}{-3cm}\12\\setlength{\\topmargin}{1.5cm}\12\\addtolength{\\topmargin}{-2.54cm}")
 '(org-insert-heading-respect-content nil)
 '(org-latex-default-packages-alist
    '(("utf8" "inputenc" t ("pdflatex")) ("" "graphicx" t nil)
       ("" "longtable" nil nil) ("" "wrapfig" nil nil)
       ("" "rotating" nil nil) ("normalem" "ulem" t nil)
       ("" "amsmath" t nil) ("" "amssymb" t nil)
       ("" "capt-of" nil nil) ("" "hyperref" nil nil)))
 '(org-latex-inputenc-alist '(("utf8" . "utf8x")))
 '(org-modules
    '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus ol-info ol-irc
       ol-mhe org-mouse ol-rmail org-tempo ol-w3m))
 '(package-selected-packages
    '(straight dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company
       lsp-ui company hover))
 '(plantuml-default-exec-mode 'jar)
 '(plantuml-indent-level 4)
 '(plantuml-jar-path "/usr/share/java/plantuml/plantuml.jar")
 '(plantuml-server-url "http://localhost:9999/uml/")
 '(project-vc-ignores '("~/projecs/*"))
 '(pug-tab-width 2)
 '(python-shell-extra-pythonpaths
    '("/home/paulus/projects/pkg-leopard/modules/python-common/rootfs-data/usr/local/bin"))
 '(python-shell-interpreter "python3")
 '(ring-bell-function 'ignore)
 '(rust-format-on-save nil)
 '(rust-indent-method-chain t)
 '(rustic-always-locate-project-on-open t)
 '(rustic-cargo-auto-add-missing-dependencies t)
 '(rustic-cargo-build-arguments "")
 '(rustic-cargo-build-exec-command "build")
 '(rustic-cargo-clippy-trigger-fix nil)
 '(rustic-compile-command "cargo build")
 '(rustic-lsp-format t)
 '(rustic-lsp-server 'rust-analyzer)
 '(rustic-rustfmt-args "+nightly ")
 '(safe-local-variable-values
    '((eval progn (flycheck-mode -1) (lsp-mode 0))
       (eval progn (flycheck-mode 0) (lsp-mode 0))
       (eval progn (lsp-mode 0) (flycheck-mode 0))
       (company-clang-arguments
         "-I/home/paulus/projects/artecsdk/ext/3dproc/include"
         "-I/home/paulus/projects/artecsdk/ext/cameras/include"
         "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include"
         "-I/home/paulus/projects/artecsdk/ext/engine/include"
         "-I/home/paulus/projects/artecsdk/ext/flyuart/include"
         "-I/home/paulus/projects/artecsdk/ext/tunecols/include"
         "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include"
         "-I/home/paulus/projects/artecsdk/ext/3drec/include"
         "-I/home/paulus/projects/artecsdk/algorithms/include"
         "-I/home/paulus/projects/artecsdk/base/include"
         "-I/home/paulus/projects/artecsdk/base/tref-sample/include"
         "-I/home/paulus/projects/artecsdk/capturing/include"
         "-I/home/paulus/projects/artecsdk/scanning/include"
         "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs"
         "-I /home/paulus/projects/lib-rendering/a3d")))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(semantic-mode nil)
 '(semantic-python-dependency-system-include-path
    '("/usr/lib/python3.5" "/usr/lib/python3.5/plat-linux"
       "/usr/lib/python3.5/lib-dynload"
       "/usr/lib/python3.5/site-packages" "/usr/lib/python2.7"
       "/usr/lib/python2.7/site-packages"))
 '(semanticdb-ebrowse-file-match "\\.\\(hh?\\|HH?\\|hpp\\|h\\)")
 '(semanticdb-project-roots
    '("~/projects/artecsdk" "~/projects/app-easy-scan"
       "~/projects/lib-rendering"))
 '(semanticdb-save-database-functions nil)
 '(senator-highlight-found t)
 ;; '(server-host "localhost")
 ;; '(server-mode t)
 ;; '(server-use-tcp t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(syncthing-default-server-token "Jkcm2fnTDGEFfeWCLodEYTJNSqLUvUnX")
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(treemacs-indicate-top-scroll-mode nil)
 '(treemacs-silent-filewatch t)
 '(treemacs-silent-refresh t)
 '(web-mode-css-indent-offset 2)
 '(whitespace-global-modes t)
 '(whitespace-line-column 100)
 '(whitespace-style
    '(face trailing tabs spaces lines newline missing-newline-at-eof empty
       indentation big-indent space-after-tab space-before-tab
       space-mark tab-mark newline-mark))
 '(ws-butler-global-mode t)
 '(yaml-indent-offset 2)
 '(yas-choose-keys-first t)
 '(yas-snippet-dirs '(yasnippet-snippets-dir "/home/paulus/.emacs.d/snippets"))
 '(yas-use-menu 'abbreviate)
 '(ycmd-server-args
    '("--log=debug" "--keep_logfile" "--idle_suicide_seconds=10800 "))
 '(ycmd-server-command '("python3" "/usr/share/ycmd/ycmd")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "white" :foreground "gray15" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 110 :width normal :foundry "unknown" :family "Monofur Nerd Font"))))
 '(blamer-face ((t (:inherit font-lock-variable-name-face :slant normal :weight regular :height 0.8 :width normal :foundry "unknown" :family "monofur"))))
 '(blamer-pretty-commit-message-face ((t (:inherit font-lock-string-face :slant normal :height 0.8))))
 '(bm-face ((t (:overline "dark green"))))
 '(bm-fringe-persistent-face ((t (:foreground "deep sky blue"))))
 '(bm-persistent-face ((t (:background "#f0fcfe"))))
 '(company-tooltip ((t (:background "azure" :foreground "black"))))
 '(flycheck-error ((t (:background "LavenderBlush1"))))
 '(flycheck-error-list-highlight ((t (:background "azure"))))
 '(flycheck-info ((t (:background "DarkOliveGreen1"))))
 '(flycheck-warning ((t (:underline (:color "lime green" :style wave)))))
 '(flyspell-duplicate ((t (:underline "light gray"))))
 '(flyspell-incorrect ((t (:underline "orange red"))))
 '(font-lock-keyword-face ((t (:foreground "dodger blue" :weight semi-light))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "firebrick"))))
 '(font-lock-type-face ((t (:foreground "dodger blue" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "dodger blue" :weight semi-light :height 1.0))))
 '(header-line ((t (:inherit mode-line :background "grey96" :foreground "grey40" :box nil :height 1.0))))
 '(idle-highlight ((t (:inherit region :background "chartreuse"))))
 '(indent-guide-face ((t (:foreground "#cceeff" :slant normal))))
 '(js2-external-variable ((t (:foreground "dark red"))))
 '(js2-object-property ((t (:inherit default :foreground "navy"))))
 '(lsp-dart-code-lens-separator ((t (:height 0.6))))
 '(lsp-dart-test-tree-error-face ((t (:inherit error :height 1.0))))
 '(lsp-face-highlight-read ((t (:background "#eeffcc"))))
 '(lsp-flycheck-warning-unnecessary-face ((t (:foreground "gray" :underline "aquamarine"))) t)
 '(lsp-ui-doc-background ((t (:background "azure1"))))
 '(lsp-ui-sideline-code-action ((t (:foreground "dark red"))))
 '(lsp-ui-sideline-current-symbol ((t (:foreground "black"))))
 '(lsp-ui-sideline-global ((t (:foreground "orange" :height 1.0))))
 '(lsp-ui-sideline-symbol ((t (:inherit default :foreground "gray"))))
 '(lsp-ui-sideline-symbol-info ((t (:slant italic :height 0.9))))
 '(minibuffer-prompt ((t (:background "light cyan" :foreground "#0072b2"))))
 '(mmm-default-submode-face ((t nil)))
 '(mode-line ((t (:background "gray96" :foreground "gray8" :inverse-video nil :height 0.7))))
 '(mode-line-inactive ((t (:background "gray99" :foreground "gray40" :inverse-video nil :height 0.7))))
 '(org-level-1 ((t (:inherit outline-1 :extend nil :weight bold :height 1.6))))
 '(org-level-2 ((t (:inherit outline-2 :extend nil :foreground "dark orange" :height 1.4))))
 '(org-level-3 ((t (:inherit outline-3 :extend nil :foreground "dim gray" :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :extend nil :foreground "dim gray" :slant normal :weight semi-bold :height 1.0))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "DodgerBlue4"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "tomato"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "chartreuse4"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "red3"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "DeepSkyBlue3"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit rainbow-delimiters-base-face :foreground "chocolate"))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark green"))))
 '(rainbow-delimiters-mismatched-face ((t (:inherit (rainbow-delimiters-unmatched-face rainbow-delimiters-base-face)))))
 '(rainbow-delimiters-unmatched-face ((t (:inherit rainbow-delimiters-base-face :foreground "orange red" :box (:line-width 1 :color "orange red")))))
 '(region ((t (:extend t :background "gold" :underline "gold"))))
 '(rst-adornment ((t (:inherit font-lock-keyword-face :height 1.15))))
 '(rst-level-1 ((t (:background "dodger blue" :foreground "white" :weight semi-bold :height 1.15))))
 '(rst-level-2 ((t (:background "dodger blue" :foreground "white" :weight semi-bold :height 1.15))))
 '(rst-level-3 ((t (:foreground "dodger blue" :weight semi-bold :height 1.15))))
 '(rust-string-interpolation ((t (:inherit font-lock-string-face :slant italic :weight semi-bold))))
 '(rust-unsafe ((t (:inherit font-lock-warning-face :background "red" :distant-foreground "black" :foreground "white" :box (:line-width (2 . 2) :color "red" :style flat-button)))))
 '(rust-unsafe-face ((t (:inherit font-lock-warning-face))) t)
 '(rustic-compilation-info ((t (:inherit default))))
 '(semantic-highlight-func-current-tag-face ((t (:overline "deep sky blue"))))
 '(semantic-tag-boundary-face ((t (:distant-foreground "spring green" :overline "white smoke"))))
 '(sml/filename ((t (:inherit sml/global :foreground "gray8" :weight normal))))
 '(sml/name-filling ((t (:inherit sml/position-percentage))))
 '(syncthing-count-local-files ((t (:foreground "dim gray"))))
 '(syncthing-count-local-folders ((t (:foreground "dark orange"))))
 '(syncthing-progress-0 ((t (:foreground "firebrick"))))
 '(syncthing-progress-25 ((t (:foreground "red"))))
 '(syncthing-progress-50 ((t (:foreground "dark orange"))))
 '(syncthing-progress-75 ((t (:foreground "green3"))))
 '(table-cell ((t (:background "white smoke"))))
 '(whitespace-newline ((t (:foreground "white smoke" :weight normal))))
 '(whitespace-space ((t (:foreground "light gray"))))
 '(window-divider ((t (:foreground "gray60")))))
