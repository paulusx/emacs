(use-package flycheck
  :ensure t
  :config
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
          ("s-?" . lsp-find-references)
          )
  :hook (c++-mode . my/c++-mode-hook)
  )

(use-package company
  :init
  :config (progn
            (add-to-list 'company-backends '(company-capf))
            (setq company-dabbrev-downcase nil)
            (global-company-mode)
            )
)


(defun my/c++-mode-hook ()
  (yafolding-mode 0)
  (flymake-mode 0)
  (flycheck-mode t)
  (flyspell-prog-mode)
  (lsp-mode)
  (setq prettify-symbols-alist '( ("->" . "→")
                                  ("=>" . "⇒")
                                  ("..." . "…")
                                  ))
  (prettify-symbols-mode)

  )

(defun my/c++-mode-hook ()
;  (interactive)
  (progn
    ;;; (set (make-local-variable 'company-backends) (list 'company-c-headers 'company-files))
    (lsp)
    )
  )

(add-hook 'c++-mode-hook 'my/c++-mode-hook)
;; (add-hook 'c-mode-common-hook #'clang-format+-mode)


(with-eval-after-load 'lsp-clangd
    (require 'dap-cpptools))

(setq auto-mode-alist
	  (cons '("\\.ipp" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
  (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.hh$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.hpp$" . c++-mode) auto-mode-alist))

(setq auto-mode-alist
	  (cons '("\\.inl$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.glsl$" . c++-mode) auto-mode-alist))


(provide 'customize-common-c)
