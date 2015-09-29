(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c473ac9ae70ceabe114b7a26a9d2f879da34c43b0e8cb1ce024f22ff0302296e" default)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;; TODO: customize bookmarks
(add-to-list 'load-path "~/.emacs.d/lisp")
(set 'custom-theme-directory "~/.emacs.d/themes")

(load-theme 'px-dichromacy)




;; (add-hook 'after-init-hook 'lambda () (…))

;; Interface
(require 'interface-settings) ;; common settings

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'ido)
(ido-mode)

(require 'key-binding-settings)

;;  Именование буферов с одинаковыми именами
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "→")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq post-forward-angle-brackets 'post-forward-angle-brackets)

(require 'cmake-mode)
(require 'jedi-core)

;; associations files
(require 'associations-files-settings)

;; Company settings
(global-company-mode t)
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
;;; global company backends list
(add-to-list 'company-backends 'company-yasnippet)


(yas-global-mode t)
(ws-butler-global-mode)




