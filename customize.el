(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bm-buffer-persistence t)
 '(bm-repository-size 1000)
 '(c++-mode-hook nil)
 '(c-backslash-column (quote set-from-style))
 '(c-backslash-max-column 120)
  '(c-default-style
     (quote
       ((c-mode . "stroustrup")
         (c++-mode . "artec")
         (java-mode . "java")
         (awk-mode . "awk")
         (other . "gnu"))))
 '(c-report-syntactic-errors nil)
 '(clang-format-style "file")
 '(column-number-mode t)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
  '(company-backends
     (quote
       (company-gtags company-c-headers company-jedi company-yasnippet company-bbdb company-nxml company-css company-eclim company-clang company-xcode company-cmake company-capf
         (company-dabbrev-code company-gtags company-etags company-keywords)
         company-oddmuse company-files company-dabbrev)))
  '(company-c-headers-path-system
     (quote
       ("/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/" "/usr/include/c++/5.2.0/" "/usr/include/" "/usr/local/include/" "/home/paulus/projects/artecsdk/ext/3dproc/include" "/home/paulus/projects/artecsdk/ext/cameras/include" "/home/paulus/projects/artecsdk/ext/config-enumerator/include" "/home/paulus/projects/artecsdk/ext/engine/include" "/home/paulus/projects/artecsdk/ext/flyuart/include" "/home/paulus/projects/artecsdk/ext/simplegl/examples/MarchingCubes/include" "/home/paulus/projects/artecsdk/ext/simplegl/examples/QtGUI/include" "/home/paulus/projects/artecsdk/ext/tunecols/include" "/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "/home/paulus/projects/artecsdk/ext/3drec/include" "/home/paulus/projects/artecsdk/algorithms/include" "/home/paulus/projects/artecsdk/base/include" "/home/paulus/projects/artecsdk/base/tref-sample/include" "/home/paulus/projects/artecsdk/capturing/include" "/home/paulus/projects/artecsdk/scanning/include" "/home/paulus/projects/app-easy-scan/libs/es-core/defs" "/home/paulus/projects/lib-rendering/a3d" "/usr/include/qt")))
 '(company-c-headers-path-user (quote (".")))
  '(company-clang-arguments
     (quote
       ("-std=c++14" "-I/home/paulus/projects/artecsdk/ext/3dproc/include" "-I/home/paulus/projects/artecsdk/ext/cameras/include" "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include" "-I/home/paulus/projects/artecsdk/ext/engine/include" "-I/home/paulus/projects/artecsdk/ext/flyuart/include" "-I/home/paulus/projects/artecsdk/ext/tunecols/include" "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "-I/home/paulus/projects/artecsdk/ext/3drec/include" "-I/home/paulus/projects/artecsdk/algorithms/include" "-I/home/paulus/projects/artecsdk/base/include" "-I/home/paulus/projects/artecsdk/base/tref-sample/include" "-I/home/paulus/projects/artecsdk/capturing/include" "-I/home/paulus/projects/artecsdk/scanning/include" "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs" "-I/home/paulus/projects/lib-rendering/a3d" "-I/usr/include/qt")))
 '(company-completion-cancelled-hook nil)
 '(company-racer-executable "racer")
 '(company-selection-wrap-around t)
 '(company-semantic-begin-after-member-access nil)
 '(company-tooltip-flip-when-above t)
 '(company-tooltip-minimum-width 8)
 '(company-tooltip-offset-display (quote lines))
 '(company-ycmd-enable-fuzzy-matching nil)
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-environment (quote ("PATH=/usr/bin:/usr/local/bin:/opt/cuda/bin/")))
 '(compilation-scroll-output (quote first-error))
  '(compilation-search-path
     (quote
       (nil "~/sshfs/projects/artecsdk/" "~/sshfs/projects/lib-rendering/" "~/sshfs/projects/app-easy-scan/" "~/mac/projects" "~/sshfs")))
 '(compilation-skip-threshold 2)
 '(compilation-skip-visited t)
  '(compile-command
     "cd ~/projects/ && time PATH=$PATH:$HOME/.cargo/bin LANG= scons -f pkg-leeloo/utils/build/SConstruct -j13 --update-db --use-profile=leeloo/host --scan-dir=pkg-leeloo --module=leeloo")
 '(cursor-in-non-selected-windows nil)
  '(custom-safe-themes
     (quote
       ("4ef489bd19f06c4784ad0a440b8dfe5ee32c761ccfa134830df119005feddf47" "c55b811819ce5868f43176bcbc23f8b569e495e1dd0f180beeba571649b9730b" "f364e75cdd1f0e6e6cf9db5c815712e28edb0f534909b13c95388d7f501ab0e0" "02ec9b95275c0f6b5d050c27017beacf55e6b69607759872271df070e573ceff" "b8035e71f1cfba8c9b35931c2e4953aa40aa998747a3a198480934b694ec3e94" "a51245cbca613c943213aceb3fbb638276b68ca37b9dbf08ddf422570bf88c2e" "e37044eff1939059a930158c43b3b2812a85f5104426ed619252bec773ac8cb9" "3aa586d937fc99992cd44d7d4aab284eeaf7323898e37e152d37ebc298229ebc" "55106d426099242e38daa86deabadb643313fbd84517326d2bfc48ab4d86458f" "0de269f129b765c9fe244c19c1ec9dfd6c66cee4179eb235aff1d3301e2121e0" "3d530d6dcdf26b4b2b68c18bfa8d8f927377a12cb75abf8768e0b818a19f782e" "cc371ea0ca0f879b99710b62dd3c9943fcc1c274efe45e9d2c578f9f93253930" "3c6e8fb18f82d2c4cf242c2e536b75eecd67257f95e73d618f98f0502fc81578" "165c7115443aabcc950ef1514a5c238c1b78cb743dc6df4f41a82a2d6e66c683" "5e6a55507bc922241a1fa50f095f15996493ef6d11c648fd7122ca83a577d717" "4b177ef60e53808453134546ff74656b2ded2bf7068a78467995255921b2ac5e" "31c7386bea6f51a5b799d8f456e08fc6dee5f59605c165562fc7c32a323b7f42" default)))
 '(ede-project-directories (quote ("/home/paulus/projects")))
 '(eldoc-minor-mode-string " ElDoc")
 '(eldoc-print-after-edit t)
 '(flycheck-buffer-switch-check-intermediate-buffers nil)
  '(flycheck-check-syntax-automatically
     (quote
       (save idle-change idle-buffer-switch new-line mode-enabled)))
 '(global-semantic-decoration-mode nil)
 '(global-semantic-highlight-func-mode nil)
 '(global-semantic-mru-bookmark-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(graphviz-dot-preview-extension "svg")
 '(graphviz-dot-view-command "doted -Tsvg %s")
 '(graphviz-dot-view-edit-command t)
 '(groovy-indent-offset 2)
 '(hide-ifdef-initially t)
 '(hide-ifdef-shadow t)
 '(indent-tabs-mode nil)
  '(irony-additional-clang-options
     (quote
       ("-std=c++14" "-I/home/paulus/projects/artecsdk/ext/3dproc/include" "-I/home/paulus/projects/artecsdk/ext/cameras/include" "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include" "-I/home/paulus/projects/artecsdk/ext/engine/include" "-I/home/paulus/projects/artecsdk/ext/flyuart/include" "-I/home/paulus/projects/artecsdk/ext/tunecols/include" "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "-I/home/paulus/projects/artecsdk/ext/3drec/include" "-I/home/paulus/projects/artecsdk/algorithms/include" "-I/home/paulus/projects/artecsdk/base/include" "-I/home/paulus/projects/artecsdk/base/tref-sample/include" "-I/home/paulus/projects/artecsdk/capturing/include" "-I/home/paulus/projects/artecsdk/scanning/include" "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs" "-I/home/paulus/projects/lib-rendering/a3d" "-I/usr/include/qt")))
  '(jenkins-api-url
     "http://jenkins.artec-local:8080/job/Artec%203D%20Scanning%20SDK%20For%20Linux%20%28fast-build%29/api/xml")
 '(jenkins-login-url nil)
 '(js-indent-level 2)
 '(js2-strict-missing-semi-warning nil)
 '(lisp-indent-offset 2)
 '(lisp-interaction-mode-hook (quote (eldoc-mode)))
 '(lsp-auto-guess-root nil)
 '(lsp-prefer-flymake nil)
 '(lsp-ui-doc-border "black")
 '(lsp-ui-doc-enable t)
 '(lsp-ui-doc-header nil)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-max-height 50)
 '(lsp-ui-doc-max-width 100)
 '(lsp-ui-doc-position (quote bottom))
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-flycheck-list-position (quote right))
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-symbol t)
 '(lsp-ui-sideline-update-mode (quote line))
 '(nxml-slash-auto-complete-flag t)
  '(package-selected-packages
     (quote
       (rustic mmm-jinja2 jinja2-mode ws-butler ws-buttler yafolding aj-toggle-fold yaml-mode lsp-groovy ccls lsp-imenu capnp-mode councel consuel racer-mode raceer-mode idle-highlight-in-visible-buffers-mode idle-highlight smart-dash-mode company-lsp lsp-clients sp-clients flycheck flycheck-mode fly-check lsp-mode undo-tree indent-guide mode-icons smartparens yasnippet-snippets validate yasnippet rainbow-delimiters groovy-mode lsp-clangd lsp-css lsp-go lsp-haskell lsp-html lsp-javascript-flow lsp-python lsp-rust lsp-sh lsp-vue lsp-ui ag counsel counsel-tramp javap-mode jenkins-watch groovy-imports smart-mode-line powerline smooth-scrolling swiper nurumacs dts-mode goto-last-change goto-chg bm clang-format graphviz-dot-mode sass-mode stylus-mode pug-mode vue-mode idle-highlight-mode systemd nand2tetris vhdl-capf vhdl-tools ninja-mode rjsx-mode rust-playground react-snippets jade-mode company-web company-rtags rtags eagle-eye emacs-home emojify flycheck-vala flycheck-ycmd company-ycmd rustfmt js3-mode json jss toml-mode qml-mode flycheck-irony irony-eldoc irony fish-mode x-path-walker cuda-mode flycheck-rust highlight-parentheses hexrgb edit-color-stamp jenkins zone-nyan sr-speedbar racer protobuf-mode markdown-mode+ json-mode helm-gtags helm-fuzzier gist function-args ecb diffview diffscuss-mode csv-mode company-racer company-qml company-jedi company-irony company-flx company-cmake company-c-headers cmake-mode cargo butler)))
 '(prog-mode-hook (quote (linum-mode prettify-symbols-mode)))
 '(project-vc-ignores (quote ("~/projecs/*")))
 '(pug-tab-width 2)
 '(python-shell-interpreter "python3")
 '(rust-format-on-save nil)
 '(rust-indent-method-chain t)
  '(safe-local-variable-values
     (quote
       ((company-clang-arguments "-I/home/paulus/projects/artecsdk/ext/3dproc/include" "-I/home/paulus/projects/artecsdk/ext/cameras/include" "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include" "-I/home/paulus/projects/artecsdk/ext/engine/include" "-I/home/paulus/projects/artecsdk/ext/flyuart/include" "-I/home/paulus/projects/artecsdk/ext/tunecols/include" "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "-I/home/paulus/projects/artecsdk/ext/3drec/include" "-I/home/paulus/projects/artecsdk/algorithms/include" "-I/home/paulus/projects/artecsdk/base/include" "-I/home/paulus/projects/artecsdk/base/tref-sample/include" "-I/home/paulus/projects/artecsdk/capturing/include" "-I/home/paulus/projects/artecsdk/scanning/include" "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs" "-I /home/paulus/projects/lib-rendering/a3d"))))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(semantic-mode nil)
  '(semantic-python-dependency-system-include-path
     (quote
       ("/usr/lib/python3.5" "/usr/lib/python3.5/plat-linux" "/usr/lib/python3.5/lib-dynload" "/usr/lib/python3.5/site-packages" "/usr/lib/python2.7" "/usr/lib/python2.7/site-packages")))
 '(semanticdb-ebrowse-file-match "\\.\\(hh?\\|HH?\\|hpp\\|h\\)")
  '(semanticdb-project-roots
     (quote
       ("~/projects/artecsdk" "~/projects/app-easy-scan" "~/projects/lib-rendering")))
 '(semanticdb-save-database-functions nil)
 '(senator-highlight-found t)
 '(server-host "localhost")
 '(server-mode t)
 '(server-use-tcp t)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(web-mode-css-indent-offset 2)
 '(yaml-indent-offset 2)
 '(yas-choose-keys-first t)
 '(yas-use-menu (quote abbreviate))
  '(ycmd-server-args
     (quote
       ("--log=debug" "--keep_logfile" "--idle_suicide_seconds=10800 ")))
 '(ycmd-server-command (quote ("python3" "/usr/share/ycmd/ycmd"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "gray15" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 128 :width normal :foundry "unknown" :family "monofur"))))
 '(bm-face ((t (:overline "dark green"))))
 '(bm-persistent-face ((t (:overline "tomato"))))
 '(flycheck-error ((t (:underline "tomato"))))
 '(flycheck-error-list-highlight ((t (:background "azure"))))
 '(flycheck-info ((t (:background "DarkOliveGreen1"))))
 '(flycheck-warning ((t (:background "lemon chiffon"))))
 '(font-lock-keyword-face ((t (:foreground "dodger blue" :weight semi-light))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "firebrick"))))
 '(font-lock-variable-name-face ((t (:foreground "dodger blue" :weight semi-light :height 1.0))))
 '(idle-highlight ((t (:inherit region :background "chartreuse"))))
 '(indent-guide-face ((t (:foreground "#cceeff" :slant normal))))
 '(lsp-face-highlight-read ((t (:background "#eeffcc"))))
 '(lsp-ui-doc-background ((t (:background "azure1"))))
 '(lsp-ui-sideline-code-action ((t (:foreground "tomato"))))
 '(lsp-ui-sideline-current-symbol ((t (:background "light cyan" :foreground "black" :box (:line-width -1 :color "deep sky blue") :weight ultra-bold :height 0.8))))
 '(lsp-ui-sideline-global ((t (:foreground "dark gray" :height 0.9))))
 '(lsp-ui-sideline-symbol ((t (:foreground "grey" :box (:line-width -1 :color "#aacccc") :height 0.8))))
 '(lsp-ui-sideline-symbol-info ((t (:slant italic :height 0.9))))
 '(minibuffer-prompt ((t (:background "light cyan" :foreground "#0072b2"))))
 '(mmm-default-submode-face ((t nil)))
 '(mode-line ((t (:background "gray96" :foreground "gray8" :inverse-video nil :height 0.8))))
 '(mode-line-inactive ((t (:background "gray99" :foreground "gray40" :inverse-video nil :height 0.8))))
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
 '(rust-unsafe-face ((t (:inherit font-lock-warning-face))))
 '(semantic-highlight-func-current-tag-face ((t (:overline "deep sky blue"))))
 '(semantic-tag-boundary-face ((t (:distant-foreground "spring green" :overline "white smoke"))))
 '(sml/filename ((t (:inherit sml/global :foreground "gray8" :weight normal))))
 '(sml/name-filling ((t (:inherit sml/position-percentage))))
 '(window-divider ((t (:foreground "gray60")))))
