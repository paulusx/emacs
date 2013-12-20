(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray10" :foreground "gray90" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "monofur"))))
 '(bm-face ((t (:background "#1a1e1e"))) t)
 '(c-nonbreakable-space-face ((t (:foreground "Black" :weight bold))) t)
 '(compilation-error ((t (:inherit error :width condensed))))
 '(css-property ((t (:inherit font-lock-variable-name-face :foreground "chartreuse"))) t)
 '(css-selector ((t (:inherit font-lock-function-name-face :foreground "SteelBlue1" :weight bold))) t)
 '(cursor ((t (:background "chartreuse"))))
 '(custom-button ((((type x w32 ns) (class color)) (:background "gray20" :foreground "gray90" :box (:line-width 2 :style released-button)))))
 '(custom-button-mouse ((((type x w32 ns) (class color)) (:background "grey30" :foreground "white" :box (:line-width 1 :style released-button)))))
 '(custom-button-pressed ((((type x w32 ns) (class color)) (:background "gray30" :foreground "green" :box (:line-width 1 :style pressed-button)))))
 '(custom-changed ((((min-colors 88) (class color)) (:background "#380" :foreground "#ffc"))))
 '(font-lock-builtin-extra-face ((t (:inherit font-lock-builtin-face :foreground "DeepSkyBlue4" :height 0.9))) t)
 '(font-lock-comment-face ((t (:foreground "#697990" :width extra-expanded))))
 '(font-lock-constant-face ((t (:foreground "SteelBlue3" :height 1.0))))
 '(font-lock-function-name-face ((t (:foreground "DeepSkyBlue1" :height 1.0))))
 '(font-lock-keyword-face ((t (:foreground "#aaff76" :height 1.0))))
 '(font-lock-number-face ((t (:inherit font-lock-constant-face :foreground "green" :height 1.1))) t)
 '(font-lock-string-face ((t (:foreground "CadetBlue1" :slant italic))))
 '(font-lock-type-face ((t (:foreground "lime green" :height 1.0))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod" :height 1.0))))
 '(hide-ifdef-shadow ((t (:inherit shadow :foreground "#232323"))))
 '(highlight-changes ((((min-colors 88) (class color)) (:underline "#140"))))
 '(highlight-changes-delete ((((min-colors 88) (class color)) (:underline t))))
 '(hl-line ((t (:background "#192019"))))
 '(idle-highlight ((t (:foreground "yellow1" :underline (:color "dodger blue" :style wave) :weight bold))))
 '(ido-subdir ((t (:foreground "green yellow"))))
 '(js2-error ((t (:background "default" :underline "firebrick"))) t)
 '(link ((((class color) (min-colors 88) (background dark)) (:foreground "yellow" :underline t))))
 '(linum ((t (:inherit (shadow default) :background "gray9" :weight ultra-bold :height 0.9))))
 '(mode-line ((t (:background "grey20" :foreground "white" :box (:line-width 1 :color "grey40")))))
 '(mode-line-buffer-id ((t (:foreground "yellow" :weight bold))))
 '(mumamo-background-chunk-major ((t (:background "gray11"))) t)
 '(mumamo-background-chunk-submode1 ((t (:height 1.1))) t)
 '(num3-face-even ((t (:background "gray12" :overline "gray15" :underline "gray15"))) t)
 '(num3-face-odd ((t (:background "gray7" :overline "gray5" :underline "gray5"))) t)
 '(nxml-element-local-name ((t (:inherit font-lock-function-name-face))) t)
 '(region ((((class color) (min-colors 88) (background dark)) (:background "#140"))))
 '(semantic-decoration-on-includes ((t (:foreground "#ffb"))) t)
 '(semantic-decoration-on-private-members-face ((t (:background "#291919"))))
 '(semantic-decoration-on-unknown-includes ((t (:stipple nil :underline "tomato2"))))
 '(semantic-decoration-on-unparsed-includes ((((class color) (background dark)) (:background "#960"))))
 '(semantic-highlight-edits-face ((((class color) (background dark)) (:background "#262626"))))
 '(semantic-highlight-func-current-tag-face ((((class color) (background dark)) (:background "#192919"))))
 '(semantic-tag-boundary-face ((((class color) (background dark)) (:foreground "#fff" :overline nil :height 1.0 :family "monofur"))))
 '(senator-momentary-highlight-face ((((class color) (background dark)) (:background "#252525"))))
 '(show-paren-match ((t (:background "steelblue3" :foreground "#005" :weight semi-bold))))
 '(show-paren-mismatch ((t (:background "orange red" :foreground "gray2" :weight bold))))
 '(tool-bar ((t (:background "gray20" :foreground "white" :box (:line-width 1 :style released-button)))))
 '(underline ((t nil)))
 '(yaml-tab-face ((t (:background "dark red" :foreground "red" :weight bold)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-hscroll-mode t)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(c-default-style (quote ((c-mode . "stroustrup") (c++-mode . "stroustrup") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-indent-comments-syntactically-p (quote set-from-style))
 '(cmake-project-default-build-dir-name "build/")
 '(column-number-mode t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-context-lines nil)
 '(compilation-disable-input t)
 '(compilation-error-screen-columns t)
 '(compilation-read-command t)
 '(compilation-save-buffers-predicate t)
 '(compilation-search-path (quote ("../build")))
 '(compilation-start-hook nil)
 '(compilation-window-height 40)
 '(compile-command "g++ test.cc -o test -g")
 '(css-color-global-mode t)
 '(custom-buffer-indent 4)
 '(custom-enabled-themes nil)
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/paulus/Projects/anomalia/voyeur/sources" "/home/paulus/Projects/anomalia/voyeur")))
 '(electric-indent-mode t)
 '(global-highlight-changes-mode nil)
 '(global-semantic-tag-folding-mode t nil (semantic-util-modes))
 '(global-senator-minor-mode t nil (senator))
 '(hide-ifdef-initially t)
 '(hide-ifdef-lines t)
 '(hide-ifdef-shadow t)
 '(highlight-indentation t)
 '(highlight-nonselected-windows t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ipython-complete-function (quote py-complete))
 '(jedi:complete-on-dot t)
 '(jedi:key-complete [C-Multi_key])
 '(jira-url "http://jira1.ast:8080")
 '(line-spacing 0)
 '(longlines-show-hard-newlines t)
 '(longlines-wrap-follows-window-size t)
 '(nxml-child-indent 4)
 '(nxml-enabled-unicode-blocks (quote (basic-latin latin-1-supplement latin-extended-a latin-extended-b ipa-extensions spacing-modifier-letters combining-diacritical-marks greek-and-coptic cyrillic cyrillic-supplementary general-punctuation superscripts-and-subscripts currency-symbols combining-diacritical-marks-for-symbols letterlike-symbols number-forms arrows mathematical-operators miscellaneous-technical control-pictures optical-character-recognition enclosed-alphanumerics box-drawing block-elements geometric-shapes miscellaneous-symbols dingbats miscellaneous-mathematical-symbols-a supplemental-arrows-a supplemental-arrows-b miscellaneous-mathematical-symbols-b supplemental-mathematical-operators cjk-symbols-and-punctuation alphabetic-presentation-forms variation-selectors small-form-variants specials mathematical-alphanumeric-symbols)))
 '(nxml-slash-auto-complete-flag t)
 '(pop3-leave-mail-on-server t)
 '(pop3-maildrop "seemanx")
 '(pop3-mailhost "pop3.yandex.ru")
 '(pop3-password-required t)
 '(pop3-stream-type (quote ssl))
 '(python-shell-interpreter "python2")
 '(safe-local-variable-values (quote ((encoding . UTF-8) (encoding . utf-8))))
 '(scalable-fonts-allowed t)
 '(scroll-bar-mode nil)
 '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/usr/include/boost")))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch nil)
 '(show-paren-style (quote parenthesis))
 '(speedbar-load-hook (quote (Info-install-speedbar-variables #[nil "\300\301!\207" [require semantic-sb] 2])))
 '(timeclock-modeline-display t nil (timeclock))
 '(tool-bar-mode nil)
 '(tool-bar-style (quote text))
 '(word-wrap t)
 '(x-stretch-cursor t)
 '(yas-trigger-key "C-<tab>"))

(add-to-list 'load-path "~/.emacs.d/")
;; (add-to-list 'load-path "~/.emacs.d/ede-cmake")

(global-linum-mode t)


;; customize SpeedBar
;;(require 'sr-speedbar-autoloads)

;;(when window-system          ; start speedbar if we're using a window system
  ;;  (speedbar t))








;;;

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'ido)
(ido-mode t)
;;;; Other settings




;;(setq speedbar-mode-hook '(lambda () () (linum-mode 0)))


(global-hl-line-mode -1) ;; подсветка строки с курсором
;;(windmove-default-keybindings 'meta) ;;
(fset 'yes-or-no-p 'y-or-n-p) ;; просим емакс быть кратким
 ;;(iswitchb-mode 1) ;; режим переключения буферов
(desktop-save-mode t) ;; сохранять буфера после закрытия

(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
;;; Удалить привязку `C-x f'
(global-unset-key "\C-xf")
;;; Удалить привязку `C-z'
(global-unset-key "\C-z")
;;; Удалить привязку `f2'


(defun my-mark-line ()
  (interactive)
  (beginning-of-line)
;  (mark-end-of-sentence (-regq "$"))
;  (end-of-line)
;  (next-line)
;  (beginning-of-line)
  )

(global-set-key (kbd "C-c m") 'my-mark-line) 


(global-set-key [f2] 'menu-bar-mode)

(global-set-key (kbd "s-z") 'compile)


;; (global-set-key [s-up] 'windmove-up)
;; (global-set-key [s-left] 'windmove-left)
;; (global-set-key (kbd "s-<right>") 'windmove-right)
;; (global-set-key [s-down] 'windmove-down)

;;;(format-kbd-macro (read-key-sequence "Key? " nil t))

(global-set-key (kbd "s-w") 'windmove-up)
(global-set-key (kbd "s-a") 'windmove-left)
(global-set-key (kbd "s-d") 'windmove-right)
(global-set-key (kbd "s-s") 'windmove-down)

(global-set-key (kbd "s-b") 'bm-toggle)
(global-set-key (kbd "s->") 'bm-next)
(global-set-key (kbd "s-<") 'bm-previous)

(global-set-key (kbd "s-i") 'idle-highlight)


;; (require `python-mode)
;;; Закоментить регион
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)

;;; Перейти к противоположной скобке
(global-set-key (kbd "C-c SPC") 'match-paren)
;(global-set-key (kbd "<f11>") ')


;; CMake
;; Provides syntax highlighting and indentation for CMakeLists.txt and
;; *.cmake source files.

(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                ("\\.cmake\\'" . cmake-mode))
              auto-mode-alist))


;; Именование буферов с одинаковыми именами
(require 'uniquify)
;; (setq uniquify-buffer-name-style t)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq post-forward-angle-brackets 'post-forward-angle-brackets)

;;;; Подсветка скобочек
;; http://nschum.de/src/emacs/highlight-parentheses/highlight-parentheses.el

(require 'highlight-parentheses)
;; (add-hook 'lisp-mode-hook (highlight-parentheses-mode))
(define-globalized-minor-mode global-highlight-parentheses-mode
        highlight-parentheses-mode highlight-parentheses-mode)
(setq hl-paren-colors '("ff4400"  "#1FFF00" "#009EFF" "#2100FF" "ffaa00" "#00AAFF" "#00ff00"))
(global-highlight-parentheses-mode)



;; YAS
(require 'yasnippet)
(yas-global-mode t)


;; Python
(require 'jedi)

;;;;
(require 'yaml-mode)



;; Semantic

(require 'auto-complete-clang-async)
(require 'cedet)

(global-ede-mode t) 

(require 'cpputils-cmake-autoloads)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/emacs-clang-complete-async/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)  
  )


(defun my-python-hook ()
  (jedi-mode)
  (ws-trim-mode)
  ;(idle-highlight)
  )

(add-hook 'python-mode-hook 'my-python-hook)


(defun my-c-mode-common-hook ()
  (idle-highlight)
  (outline-minor-mode)
  (local-set-key (kbd "C-c <") 'hide-subtree)
  (local-set-key (kbd "C-c <") 'show-subtree)
  )

(defun ac-common-setup () nil)

(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))

(my-ac-config)




;; ;; CC-mode
;; (add-hook 'c-mode-hook '(lambda ()
;;         (setq ac-sources (append '(ac-source-semantic) ac-sources))
;;         (local-set-key (kbd "RET") 'newline-and-indent)
;;         (linum-mode t)
;;         (semantic-load-enable-excessive-code-helpers)))


(put 'downcase-region 'disabled t)
