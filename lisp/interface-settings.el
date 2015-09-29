;; Interface Settings 

(global-font-lock-mode t)

(global-hl-line-mode -1) ;; подсветка строки с курсором
(fset 'yes-or-no-p 'y-or-n-p) ;; просим емакс быть кратким
(desktop-save-mode t)

(global-linum-mode t)


(custom-set-variables
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
)

(require 'highlight-parentheses)
(define-globalized-minor-mode
  global-highlight-parentheses-mode
  highlight-parentheses-mode highlight-parentheses-mode)

(setq hl-paren-colors
      '(
	"#ff4400"
	"#229900"
	"#009eff"
	"#2100ff"
	"#ffaa00"
	"#00aaff"
	"#00ff00"
	)
      )
(global-highlight-parentheses-mode)


(provide 'interface-settings)
