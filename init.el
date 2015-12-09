(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c++-mode-hook nil)
 '(c-backslash-column (quote set-from-style))
 '(c-backslash-max-column 120)
 '(c-default-style
   (quote
    ((c-mode . "stroustrup")
     (c++-mode . "stroustrup")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(c-report-syntactic-errors nil)
 '(column-number-mode t)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-backends
   (quote
    (company-gtags company-c-headers company-jedi company-yasnippet company-bbdb company-nxml company-css company-eclim company-clang company-xcode company-cmake company-capf
                   (company-dabbrev-code company-gtags company-etags company-keywords)
                   company-oddmuse company-files company-dabbrev)))
 '(company-c-headers-path-system
   (quote
    ("/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/" "/usr/include/c++/5.2.0/" "/usr/include/" "/usr/local/include/" "/home/paulus/projects/artecsdk/ext/3dproc/include" "/home/paulus/projects/artecsdk/ext/cameras/include" "/home/paulus/projects/artecsdk/ext/config-enumerator/include" "/home/paulus/projects/artecsdk/ext/engine/include" "/home/paulus/projects/artecsdk/ext/flyuart/include" "/home/paulus/projects/artecsdk/ext/simplegl/examples/MarchingCubes/include" "/home/paulus/projects/artecsdk/ext/simplegl/examples/QtGUI/include" "/home/paulus/projects/artecsdk/ext/tunecols/include" "/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "/home/paulus/projects/artecsdk/ext/3drec/include" "/home/paulus/projects/artecsdk/algorithms/include" "/home/paulus/projects/artecsdk/base/include" "/home/paulus/projects/artecsdk/base/tref-sample/include" "/home/paulus/projects/artecsdk/capturing/include" "/home/paulus/projects/artecsdk/scanning/include" "/home/paulus/projects/app-easy-scan/libs/es-core/defs" "/home/paulus/projects/lib-rendering/a3d")))
 '(company-c-headers-path-user (quote (".")))
 '(company-clang-arguments
   (quote
    ("-std=c++14 -I/home/paulus/projects/artecsdk/ext/3dproc/include" "-I/home/paulus/projects/artecsdk/ext/cameras/include" "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include" "-I/home/paulus/projects/artecsdk/ext/engine/include" "-I/home/paulus/projects/artecsdk/ext/flyuart/include" "-I/home/paulus/projects/artecsdk/ext/tunecols/include" "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "-I/home/paulus/projects/artecsdk/ext/3drec/include" "-I/home/paulus/projects/artecsdk/algorithms/include" "-I/home/paulus/projects/artecsdk/base/include" "-I/home/paulus/projects/artecsdk/base/tref-sample/include" "-I/home/paulus/projects/artecsdk/capturing/include" "-I/home/paulus/projects/artecsdk/scanning/include" "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs" "-I/home/paulus/projects/lib-rendering/a3d" "-I/usr/include/qt")))
 '(company-completion-cancelled-hook nil)
 '(company-racer-executable "~/.emacs.d/racer/target/release/racer")
 '(company-selection-wrap-around t)
 '(company-tooltip-flip-when-above t)
 '(company-tooltip-minimum-width 8)
 '(company-tooltip-offset-display (quote lines))
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-search-path
   (quote
    (nil "~/sshfs/projects/artecsdk/" "~/sshfs/projects/lib-rendering/" "~/sshfs/projects/app-easy-scan/" "~/mac/projects")))
 '(compilation-skip-threshold 2)
 '(compilation-skip-visited t)
 '(compile-command
   "cd ~/projects/ && time LANG= scons -f app-easy-scan/utils/build/SConstruct --profiles-file=app-easy-scan/utils/build/profiles/linux.yaml -j13 --use-profile=fast-build --scan-dir=app-easy-scan  --module=easy-scan ")
 '(custom-safe-themes
   (quote
    ("4ef489bd19f06c4784ad0a440b8dfe5ee32c761ccfa134830df119005feddf47" "c55b811819ce5868f43176bcbc23f8b569e495e1dd0f180beeba571649b9730b" "f364e75cdd1f0e6e6cf9db5c815712e28edb0f534909b13c95388d7f501ab0e0" "02ec9b95275c0f6b5d050c27017beacf55e6b69607759872271df070e573ceff" "b8035e71f1cfba8c9b35931c2e4953aa40aa998747a3a198480934b694ec3e94" "a51245cbca613c943213aceb3fbb638276b68ca37b9dbf08ddf422570bf88c2e" "e37044eff1939059a930158c43b3b2812a85f5104426ed619252bec773ac8cb9" "3aa586d937fc99992cd44d7d4aab284eeaf7323898e37e152d37ebc298229ebc" "55106d426099242e38daa86deabadb643313fbd84517326d2bfc48ab4d86458f" "0de269f129b765c9fe244c19c1ec9dfd6c66cee4179eb235aff1d3301e2121e0" "3d530d6dcdf26b4b2b68c18bfa8d8f927377a12cb75abf8768e0b818a19f782e" "cc371ea0ca0f879b99710b62dd3c9943fcc1c274efe45e9d2c578f9f93253930" "3c6e8fb18f82d2c4cf242c2e536b75eecd67257f95e73d618f98f0502fc81578" "165c7115443aabcc950ef1514a5c238c1b78cb743dc6df4f41a82a2d6e66c683" "5e6a55507bc922241a1fa50f095f15996493ef6d11c648fd7122ca83a577d717" "4b177ef60e53808453134546ff74656b2ded2bf7068a78467995255921b2ac5e" "31c7386bea6f51a5b799d8f456e08fc6dee5f59605c165562fc7c32a323b7f42" default)))
 '(ede-project-directories (quote ("/home/paulus/projects")))
 '(eldoc-print-after-edit t)
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-mru-bookmark-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(hide-ifdef-initially t)
 '(hide-ifdef-shadow t)
 '(indent-tabs-mode nil)
 '(jenkins-api-url
   "http://jenkins.artec-local:8080/job/Artec%203D%20Scanning%20SDK%20For%20Linux%20%28fast-build%29/api/xml")
 '(jenkins-login-url nil)
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-I/home/paulus/projects/artecsdk/ext/3dproc/include" "-I/home/paulus/projects/artecsdk/ext/cameras/include" "-I/home/paulus/projects/artecsdk/ext/config-enumerator/include" "-I/home/paulus/projects/artecsdk/ext/engine/include" "-I/home/paulus/projects/artecsdk/ext/flyuart/include" "-I/home/paulus/projects/artecsdk/ext/tunecols/include" "-I/home/paulus/projects/artecsdk/ext/virtualization-kit/include" "-I/home/paulus/projects/artecsdk/ext/3drec/include" "-I/home/paulus/projects/artecsdk/algorithms/include" "-I/home/paulus/projects/artecsdk/base/include" "-I/home/paulus/projects/artecsdk/base/tref-sample/include" "-I/home/paulus/projects/artecsdk/capturing/include" "-I/home/paulus/projects/artecsdk/scanning/include" "-I/home/paulus/projects/app-easy-scan/libs/es-core/defs" "-I /home/paulus/projects/lib-rendering/a3d"))))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(semantic-mode t)
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
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(idle-highlight ((t (:inherit region :background "chartreuse"))))
 '(semantic-highlight-func-current-tag-face ((t (:background "#ffffe0"))))
 '(semantic-tag-boundary-face ((t (:overline "white smoke")))))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'px-customization)
