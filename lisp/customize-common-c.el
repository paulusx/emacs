(use-package flycheck
  :ensure t
  :config
  )


(defun my/c++-mode-hook ()
  (yafolding-mode t)
  (flymake-mode 0)
  (flycheck-mode t)
  )

(use-package lsp-mode)
(setq gc-cons-threshold (* 1024 1024 100))
(setq read-process-output-max (* 1024 1024))
(use-package string-inflection)

(use-package clang-format+)

(use-package lsp-ui :commands lsp-ui-mode
  :ensure t
  :bind (
          ("s-n" . lsp-ui-sideline-mode)
          ("s-j" . lsp-find-definition)
          ("s-q i" . string-inflection-cycle)
          ("s-h" . lsp-ui-doc-show)
          ("s-H" . lsp-ui-doc-hide)
          )
  :hook (c++-mode . my/c++-mode-hook)
  )

(use-package company
  :init
  :config (progn
            ;(add-to-list 'company-backends '(company-capf))
            ;(add-to-list 'company-backends '(company-lsp company-dabbrev))
           ; (add-to-list 'company-backends '(company-css company-dabbrev))
          ;  (add-to-list 'company-backends '(company-elisp company-dabbrev))
         ;   (add-to-list 'company-backends '(company-nxml company-dabbrev))
        ;    (add-to-list 'company-backends '(company-files company-dabbrev))
            ;(setq company-dabbrev-downcase nil)
            ; (global-company-mode)
            )
  )




(defun my/c++-mode-hook ()
;  (interactive)
  (progn
    (set (make-local-variable 'company-backends) (list 'company-c-headers 'company-files))
    (lsp)
    )
  )

(add-hook 'c++-mode-hook 'my/c++-mode-hook)
;; (add-hook 'c-mode-common-hook #'clang-format+-mode)

(provide 'customize-common-c)
