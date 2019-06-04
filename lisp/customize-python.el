(use-package company-lsp :commands company-lsp)
(use-package lsp-mode
  :commands lsp
  :config (add-hook 'python-mode-hook
            (lambda ()
          
              (lsp-register-client
                (make-lsp-client :new-connection (lsp-stdio-connection "pyls")
                  :major-modes '(python-mode)
                  :server-id 'pyls))
              (lsp)
              )))

(require 'lsp-clients)
(add-hook 'c++-mode-hook 'lsp)

(provide 'customize-python)
