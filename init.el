(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray10" :foreground "gray90" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "monofur"))))
 '(bm-face ((t (:background "#1a1e1e"))))
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
 '(font-lock-newkeyword-face ((t (:foreground "olive drab" :weight ultra-bold :height 1.0))))
 '(font-lock-number-face ((t (:inherit font-lock-constant-face :foreground "green" :height 1.1))) t)
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "khaki1"))))
 '(font-lock-string-face ((t (:foreground "CadetBlue1" :slant italic))))
 '(font-lock-type-face ((t (:foreground "forest green" :height 1.0))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod" :height 1.0))))
 '(hide-ifdef-shadow ((t (:inherit shadow :foreground "#232323"))) t)
 '(highlight-changes ((((min-colors 88) (class color)) (:underline "#140"))))
 '(highlight-changes-delete ((((min-colors 88) (class color)) (:underline t))))
 '(hl-line ((t (:background "#192019"))))
 '(idle-highlight ((t (:foreground "yellow1" :underline (:color "dodger blue" :style wave) :weight bold :height 1.0))))
 '(ido-subdir ((t (:foreground "green yellow"))))
 '(js2-error ((t (:background "default" :underline "firebrick"))) t)
 '(link ((((class color) (min-colors 88) (background dark)) (:foreground "yellow" :underline t))))
 '(linum ((t (:inherit (shadow default) :background "gray9" :weight ultra-bold :height 0.9))))
 '(minibuffer-prompt ((t (:foreground "#66ffaa"))))
 '(mode-line ((t (:background "grey20" :foreground "white" :box (:line-width 1 :color "grey40")))))
 '(mode-line-buffer-id ((t (:foreground "yellow" :weight bold))))
 '(mumamo-background-chunk-major ((t (:background "gray11"))) t)
 '(mumamo-background-chunk-submode1 ((t (:height 1.1))) t)
 '(num3-face-even ((t (:background "gray12" :overline "gray15" :underline "gray15"))) t)
 '(num3-face-odd ((t (:background "gray7" :overline "gray5" :underline "gray5"))) t)
 '(nxml-element-local-name ((t (:inherit font-lock-function-name-face))))
 '(region ((((class color) (min-colors 88) (background dark)) (:background "#140"))))
 '(semantic-decoration-on-includes ((t (:foreground "#ffb"))) t)
 '(semantic-decoration-on-private-members-face ((t (:background "#291919"))))
 '(semantic-decoration-on-unknown-includes ((t (:stipple nil :underline "tomato2"))))
 '(semantic-decoration-on-unparsed-includes ((((class color) (background dark)) (:background "#960"))))
 '(semantic-highlight-edits-face ((((class color) (background dark)) (:background "#262626"))))
 '(semantic-highlight-func-current-tag-face ((((class color) (background dark)) (:background "#192919"))))
 '(semantic-tag-boundary-face ((((class color) (background dark)) (:foreground "#fff" :overline nil :height 1.0 :family "monofur"))))
 '(show-paren-match ((t (:background "steelblue3" :foreground "#005" :weight semi-bold))))
 '(show-paren-mismatch ((t (:background "orange red" :foreground "gray2" :weight bold))))
 '(tool-bar ((t (:background "gray20" :foreground "white" :box (:line-width 1 :style released-button)))))
 '(underline ((t nil)))
 '(whitespace-indentation ((t (:background "gray12" :foreground "firebrick"))))
 '(whitespace-line ((t (:underline "sienna3"))))
 '(whitespace-newline ((t (:foreground "gray18" :weight normal))))
 '(whitespace-space ((t (:background "grey12" :foreground "grey20"))))
 '(whitespace-space-after-tab ((t (:foreground "firebrick"))))
 '(whitespace-tab ((t (:background "grey12" :foreground "grey22"))))
 '(yaml-tab-face ((t (:background "dark red" :foreground "red" :weight bold)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(align-indent-before-aligning t)
 '(align-to-tab-stop nil)
 '(auto-hscroll-mode t)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(c-auto-align-backslashes nil)
 '(c-backslash-column 48)
 '(c-backslash-max-column 80)
 '(c-default-style
   (quote
	((c-mode . "stroustrup")
	 (c++-mode . "stroustrup")
	 (java-mode . "java")
	 (awk-mode . "awk")
	 (other . "gnu"))))
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
 '(compile-command
   " cd ~/projects/pkg-b3d && scons -Q -s  -j13 ; notify-send -i emacs 'The end'")
 '(css-color-global-mode t)
 '(custom-buffer-indent 4)
 '(custom-enabled-themes nil)
 '(display-time-mode t)
 '(ede-project-directories
   (quote
	("/home/paulus/projects/pkg-b3d" "/home/paulus/Projects/anomalia/voyeur/sources" "/home/paulus/Projects/anomalia/voyeur")))
 '(electric-indent-mode nil)
 '(electric-pair-skip-self nil)
 '(ergoemacs-ignore-prev-global nil)
 '(ergoemacs-mode t)
 '(ergoemacs-use-aliases nil)
 '(ergoemacs-use-function-remapping nil)
 '(ergoemacs-use-small-symbols t)
 '(gdb-many-windows nil)
 '(global-highlight-changes-mode nil)
 '(hide-ifdef-initially t)
 '(hide-ifdef-lines t)
 '(hide-ifdef-shadow t)
 '(highlight-indentation t)
 '(highlight-nonselected-windows t)
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(ipython-complete-function (quote py-complete))
 '(jedi:complete-on-dot t)
 '(jedi:key-complete [C-Multi_key])
 '(jira-url "http://jira1.ast:8080")
 '(line-spacing 0)
 '(longlines-show-hard-newlines t)
 '(longlines-wrap-follows-window-size t)
 '(nxml-child-indent 4)
 '(nxml-enabled-unicode-blocks
   (quote
	(basic-latin latin-1-supplement latin-extended-a latin-extended-b ipa-extensions spacing-modifier-letters combining-diacritical-marks greek-and-coptic cyrillic cyrillic-supplementary general-punctuation superscripts-and-subscripts currency-symbols combining-diacritical-marks-for-symbols letterlike-symbols number-forms arrows mathematical-operators miscellaneous-technical control-pictures optical-character-recognition enclosed-alphanumerics box-drawing block-elements geometric-shapes miscellaneous-symbols dingbats miscellaneous-mathematical-symbols-a supplemental-arrows-a supplemental-arrows-b miscellaneous-mathematical-symbols-b supplemental-mathematical-operators cjk-symbols-and-punctuation alphabetic-presentation-forms variation-selectors small-form-variants specials mathematical-alphanumeric-symbols)))
 '(nxml-slash-auto-complete-flag t)
 '(pop3-leave-mail-on-server t)
 '(pop3-maildrop "seemanx")
 '(pop3-mailhost "pop3.yandex.ru")
 '(pop3-password-required t)
 '(pop3-stream-type (quote ssl))
 '(python-shell-interpreter "python3")
 '(rust-indent-method-chain t)
 '(safe-local-variable-values (quote ((encoding . UTF-8) (encoding . utf-8))))
 '(scalable-fonts-allowed t)
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch nil)
 '(show-paren-style (quote parenthesis))
 '(speedbar-load-hook
   (quote
	(Info-install-speedbar-variables
	 #[nil "\300\301!\207"
		   [require semantic-sb]
		   2])) t)
 '(tab-width 4)
 '(timeclock-modeline-display t nil (timeclock))
 '(tool-bar-mode nil)
 '(tool-bar-style (quote text))
 '(whitespace-action (quote (auto-cleanup)))
 '(word-wrap t)
 '(x-stretch-cursor t)
 '(yas-trigger-key "C-<tab>"))

;; ###### DEBUG ######
;; (setq debug-on-error nil)
;; ###################

(add-to-list 'load-path "~/.emacs.d/lisp")

(global-linum-mode t)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'ido)
(ido-mode t)
;;;; Other settings


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


(global-set-key [s-up] 'windmove-up)
(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-down] 'windmove-down)

;;;(format-kbd-macro (read-key-sequence "Key? " nil t))

(global-set-key (kbd "s-w") 'windmove-up)
(global-set-key (kbd "s-a") 'windmove-left)
(global-set-key (kbd "s-d") 'windmove-right)
(global-set-key (kbd "s-s") 'windmove-down)

(global-set-key (kbd "s-b") 'bm-toggle)
(global-set-key (kbd "s->") 'bm-next)
(global-set-key (kbd "s-<") 'bm-previous)

(global-set-key (kbd "s-i") 'idle-highlight)
(global-set-key (kbd "s-q") 'other-frame)
(global-set-key (kbd "s-f") 'whitespace-mode)


;; (require `python-mode)
;;; Закоментить регион
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)


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
(setq hl-paren-colors '("#ff4400"  "#1fff00" "#009eff" "#2100ff" "#ffaa00" "#00aaff" "#00ff00"))
(global-highlight-parentheses-mode)
(global-ws-trim-mode)


;; YAS
(require 'yasnippet)
(yas-global-mode t)

;; Python
(require 'jedi)

;;;;
(require 'yaml-mode)

;; Semantic
;;(require 'cedet)
;;(require 'semantic)

;;(global-ede-mode t)

;; (require 'cpputils-cmake-autoloads)
;; (defun ac-cc-mode-setup ()
;;   (setq ac-clang-complete-executable "~/.emacs.d/emacs-clang-complete-async/clang-complete")
;;   (setq ac-sources '(ac-source-clang-async))
;;   (ac-clang-launch-completion-process)
;;   )


(require 'font-lock)

(setq auto-mode-alist
	  (cons '("\\.ipp" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.h" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.inl" . c++-mode) auto-mode-alist))


(setq auto-mode-alist
	  (cons '("SConstruct" . python-mode) auto-mode-alist))

(defun my-python-hook ()
  (jedi-mode)
  (ws-trim-mode)
  ;(idle-highlight)
  )

(add-hook 'python-mode-hook 'my-python-hook)

;; C++  ######################################################################

(require `cedet)
(require `semantic)
(require `semanticdb)


(setq pkg-b3d-include
	  (mapcar
	   (lambda (a) (mapconcat 'identity (list "-I" a) "" ))
	   (split-string "/home/paulus/projects/pkg-b3d/bss/ext/aeb-controller/include
/home/paulus/projects/pkg-b3d/bss/ext/artec-recognition-sdk/include
/home/paulus/projects/pkg-b3d/bss/ext/artec-scanner-sdk/include
/home/paulus/projects/pkg-b3d/bss/ext/artec-scenarios-sdk/include
/home/paulus/projects/pkg-b3d/bss/ext/artec-sdk-base/include
/home/paulus/projects/pkg-b3d/bss/ext/broadway-db/include
/home/paulus/projects/pkg-b3d/bss/ext/bss-remote/include
/home/paulus/projects/pkg-b3d/bss/ext/capture/include
/home/paulus/projects/pkg-b3d/bss/ext/config-enumerator/include
/home/paulus/projects/pkg-b3d/bss/ext/dbmysql/include
/home/paulus/projects/pkg-b3d/bss/ext/debug-info/include
/home/paulus/projects/pkg-b3d/bss/ext/engine/include
/home/paulus/projects/pkg-b3d/bss/ext/ext-pg-linux/include
/home/paulus/projects/pkg-b3d/bss/ext/opencv-adapter/include
/home/paulus/projects/pkg-b3d/bss/ext/scanner-embedded-controller/ext/ext-pg-linux/include
/home/paulus/projects/pkg-b3d/bss/ext/scanner-embedded-controller/ext/serial-port/include
/home/paulus/projects/pkg-b3d/bss/ext/scanner-embedded-controller/include
/home/paulus/projects/pkg-b3d/bss/ext/serial-port/include
/home/paulus/projects/pkg-b3d/bss/ext/sound/include
/home/paulus/projects/pkg-b3d/bss/ext/tstring/include
/home/paulus/projects/pkg-b3d/bss/ext/typespack/include
/home/paulus/projects/pkg-b3d/bss/ext/visual-controls/include
/home/paulus/projects/pkg-b3d/bss/ext/visual-module-wx/include
/home/paulus/projects/pkg-b3d/bss/ext/wxtools/include"))
)

(setq system-include
	  '("-I/usr/include/clang-c"
		"-I/usr/include"
		"-I/usr/include/boost/tr1/tr1"
		"-I/usr/include/boost/compatibility/cpp_c_headers"
		"-I/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include"))

(setq clang-flags '("-std=c++11" "-xc++"))

(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "/home/paulus/.emacs.d/emacs-clang-complete-async/clang-complete")
  (setq ac-clang-cflags (append clang-flags system-include pkg-b3d-include))
  (setq ac-sources '(ac-source-clang-async
  					 ac-source-clang-template))
  (ac-clang-launch-completion-process)
)


(defun my-c-mode-common-hook ()
  (idle-highlight)
  (outline-minor-mode)
  (ws-trim-mode)
  (local-set-key (kbd "C-c <") 'hide-subtree)
  (local-set-key (kbd "C-c >") 'show-subtree)
  (ac-cc-mode-setup)
  (when (derived-mode-p 'c-mode 'c++-mode 'java-mode) (ggtags-mode 1))
  )

(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
  (global-auto-complete-mode t))

(my-ac-config)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;###############################################################################


(global-ede-mode 1)

(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu
(global-semantic-idle-completions-mode 1)
(semantic-add-system-include "/usr/include" 'c++-mode)


;; bindings
(global-set-key (kbd "C-x M-q") 'eassist-switch-h-cpp)

;;################################################################################
(defvar font-lock-newkeyword-face
  (defface font-lock-newkeyword-face
	'((((class color))
	   :inherit "font-lock-newkeyword-face")
	  )
	"C++11 keywords"
	:group 'basic-faces)
  )

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

(add-hook 'c++-mode-hook
	  '(lambda()
		(font-lock-add-keywords
		 nil '(;; complete some fundamental keywords
		   ("\\<\\(void\\|unsigned\\|signed\\|char\\|short\\|bool\\|int\\|long\\|float\\|double\\)\\>" . font-lock-keyword-face)
		   ;; add the new C++11 keywords
		   ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . font-lock-newkeyword-face)
		   ("\\<\\(char[0-9]+_t\\)\\>" . font-lock-keyword-face)
		   ;; PREPROCESSOR_CONSTANT
		   ("\\<[A-Z]+[A-Z_]+\\>" . font-lock-constant-face)
		   ;; hexadecimal numbers
		   ("\\<0[xX][0-9A-Fa-f]+\\>" . font-lock-constant-face)
		   ;; integer/float/scientific numbers
		   ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([ulUL]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
		   ;; user-types (customize!)
		   ("\\<[A-Za-z_]+[A-Za-z_0-9]*_\\(t\\|type\\|ptr\\)\\>" . font-lock-type-face)
		   ("\\<\\(xstring\\|xchar\\)\\>" . font-lock-type-face)
		   ))
		) t)



;;; begin rust conf

(add-to-list 'load-path "~/.emacs.d/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))



(setq racer-rust-src-path "/home/paulus/projects/rust-nightly/rustc-nightly/src")

(cond ((file-exists-p racer-rust-src-path)
	   (setq racer-cmd "~/.emacs.d/racer/target/release/racer")
	   (add-to-list 'load-path "~/.emacs.d/racer/editors")
	   (eval-after-load "rust-mode" '(require 'racer))
	   )
	  (t
	   (message "Need download Rust sources! (http://static.rust-lang.org/dist/rustc-nightly-src.tar.gz)")
	   (error "Not found dir with sources of Rust: «%s»" racer-rust-src-path))
	  )

;;; end rust conf
(put 'downcase-region 'disabled t)
