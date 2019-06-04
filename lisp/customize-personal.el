;; ido mode
(require 'ido)
(add-to-list 'ido-ignore-files "\.qmlc")
(ido-mode t)

;;  Именование буферов с одинаковыми именами
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "→")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq post-forward-angle-brackets 'post-forward-angle-brackets)

(use-package
  rainbow-delimiters
  :init (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
        (setq rainbow-delimiters-max-face-count 9))

(use-package validate :ensure t)
(use-package counsel :ensure t)
(use-package idle-highlight-mode :ensure t)
(use-package yasnippet-snippets :ensure t)
(use-package ws-butler
  :ensure t
  :config (ws-butler-global-mode)
  )

(use-package yasnippet                  ; Snippets
  :ensure t
  :config
  (validate-setq
    yas-verbosity 1                      ; No need to be so verbose
    yas-wrap-around-region t)

  (with-eval-after-load 'yasnippet
    (validate-setq yas-snippet-dirs '(yasnippet-snippets-dir)))

  (yas-reload-all)
  (yas-global-mode))


(setq-default save-place t) ;; Помнить, где был курсор в прошлый раз
(fset 'yes-or-no-p 'y-or-n-p) ;;; Вместо yes и no понимать y и n
(global-linum-mode 1)   ;;; Показывать номера строк всегда
(menu-bar-mode 1)      
(scroll-bar-mode -1)    ;;; Скроллбар не нужен
(tool-bar-mode -1)      ;;; Тулбар не нужен

;;; Умные скобочки
;; (use-package
;;   smartparens
;;    :config (smartparens-global-mode 1))

;; Electric pair mode
;; (electric-pair-mode 1)

;; Показывать отступы во всех режимах
(use-package
  indent-guide
  :config (indent-guide-global-mode 1))

(setq-default display-buffer-reuse-frames t)

;;; Дерево отмены
;; (use-package
;;   undo-tree
;;   :config (global-undo-tree-mode 1))


(provide 'customize-personal)

