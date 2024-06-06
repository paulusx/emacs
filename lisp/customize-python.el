(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))

(use-package lsp-mode
  :commands lsp
  :config (add-hook 'python-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends) (list (list 'company-capf :with 'company-yasnippet)))
;              (lsp-register-client
;                (make-lsp-client :new-connection (lsp-stdio-connection "pylsp")
;                  :major-modes '(python-mode)
;                  :server-id 'pylsp))
              (lsp)
              )))

(provide 'customize-python)
