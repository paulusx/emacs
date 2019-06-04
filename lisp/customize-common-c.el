(use-package flycheck
  :ensure t
  :config
  )

(defun my/c++-mode-hook ()
  (yafolding-mode t)
  (flymake-mode nil)
  (flycheck-mode t)
  )

(use-package lsp-mode :commands lsp)
(require 'lsp-clients)

(use-package lsp-ui :commands lsp-ui-mode
  :ensure t
  :bind (
          ("s-n" . lsp-ui-sideline-mode)
          ("s-j" . lsp-find-definition)
          )
  :hook (c++-mode . my/c++-mode-hook)
  )
(use-package company-lsp :commands company-lsp)

;; (setq ccls-sem-highlight-method 'font-lock)
;; (use-package ccls
;;   :hook ((c-mode c++-mode objc-mode) .
;;           (lambda () (require 'ccls) (lsp))))

(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'my/c++-mode-hook)

(provide 'customize-common-c)
