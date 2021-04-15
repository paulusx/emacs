(use-package company-lsp :commands company-lsp)
(use-package lsp-mode
  :commands lsp
  :config (add-hook 'python-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends) (list (list 'company-capf :with 'company-yasnippet)))
              (lsp-register-client
                (make-lsp-client :new-connection (lsp-stdio-connection "pyls")
                  :major-modes '(python-mode)
                  :server-id 'pyls))
              (lsp)
              )))

(provide 'customize-python)
