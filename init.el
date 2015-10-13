(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-backslash-max-column 120)
 '(c-default-style
   (quote
    ((c-mode . "cc-mode")
     (c++-mode . "cc-mode")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(company-clang-arguments (quote ("-std=c++14")))
 '(company-racer-executable "~/.emacs.d/racer/target/release/racer")
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-search-path (quote (nil "~/sshfs/projects/artecsdk/")))
 '(compilation-skip-threshold 2)
 '(compilation-skip-visited t)
 '(compile-command
   "cd ~/projects/artecsdk/ && LANG= scons -f ~/projects/build-system/SConstruct --profiles-file=~/projects/build-system/profiles/linux.yaml -j13 --use-profile=fast-build  --module=artec-{base,scanning,capturing,algorithms}.test")
 '(custom-safe-themes
   (quote
    ("4ef489bd19f06c4784ad0a440b8dfe5ee32c761ccfa134830df119005feddf47" "c55b811819ce5868f43176bcbc23f8b569e495e1dd0f180beeba571649b9730b" "f364e75cdd1f0e6e6cf9db5c815712e28edb0f534909b13c95388d7f501ab0e0" "02ec9b95275c0f6b5d050c27017beacf55e6b69607759872271df070e573ceff" "b8035e71f1cfba8c9b35931c2e4953aa40aa998747a3a198480934b694ec3e94" "a51245cbca613c943213aceb3fbb638276b68ca37b9dbf08ddf422570bf88c2e" "e37044eff1939059a930158c43b3b2812a85f5104426ed619252bec773ac8cb9" "3aa586d937fc99992cd44d7d4aab284eeaf7323898e37e152d37ebc298229ebc" "55106d426099242e38daa86deabadb643313fbd84517326d2bfc48ab4d86458f" "0de269f129b765c9fe244c19c1ec9dfd6c66cee4179eb235aff1d3301e2121e0" "3d530d6dcdf26b4b2b68c18bfa8d8f927377a12cb75abf8768e0b818a19f782e" "cc371ea0ca0f879b99710b62dd3c9943fcc1c274efe45e9d2c578f9f93253930" "3c6e8fb18f82d2c4cf242c2e536b75eecd67257f95e73d618f98f0502fc81578" "165c7115443aabcc950ef1514a5c238c1b78cb743dc6df4f41a82a2d6e66c683" "5e6a55507bc922241a1fa50f095f15996493ef6d11c648fd7122ca83a577d717" "4b177ef60e53808453134546ff74656b2ded2bf7068a78467995255921b2ac5e" "31c7386bea6f51a5b799d8f456e08fc6dee5f59605c165562fc7c32a323b7f42" default)))
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(indent-tabs-mode nil)
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'px-customization)
