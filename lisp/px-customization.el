
;;; TODO: customize bookmarks
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
(setq company-tooltip-align-annotations t)
;;; global company backends list
(add-to-list 'company-backends 'company-yasnippet)


(yas-global-mode t)
(ws-butler-global-mode)


(provide 'px-customization)
