;;; begin rust conf

(require 'customize-env)

;; (setq company-tooltip-align-annotations t)

(use-package rustic
  :ensure
  :bind (:map rustic-mode-map
          ("M-j" . lsp-ui-imenu)
          ("M-?" . lsp-find-references)
          ("C-c C-c l" . flycheck-list-errors)
          ("C-c C-c a" . lsp-execute-code-action)
          ("C-c C-c r" . lsp-rename)
          ;; ("C-c C-c q" . lsp-workspace-restart)
          ;; ("C-c C-c Q" . lsp-workspace-shutdown)
          ("C-c C-c s" . lsp-rust-analyzer-status)

          )
  :config
  ;; uncomment for less flashiness
  ;; (setq lsp-eldoc-hook nil)
  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-signature-auto-activate nil)

  ;; comment to disable rustfmt on save
  ; (setq rustic-format-on-save t)
  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))

(defun rk/rustic-mode-hook ()
  ;; so that run C-c C-c C-r works without having to confirm, but don't try to
  ;; save rust buffers that are not file visiting. Once
  ;; https://github.com/brotzeit/rustic/issues/253 has been resolved this should
  ;; no longer be necessary.
  (when buffer-file-name
    (setq-local buffer-save-without-query t))

  (local-set-key (kbd "s-j") 'lsp-find-definition)
  (local-set-key (kbd "s-Z") 'rustic-cargo-build)
  ;;(local-set-key (kbd "s-z") 'compile)
  (local-set-key (kbd "C-c r t") 'rustic-cargo-test)
  (local-set-key (kbd "C-c r c") 'rustic-cargo-clippy)
  (local-set-key (kbd "C-c r r") 'rustic-cargo-run)
  (local-set-key (kbd "C-c r z") 'rustic-cargo-build)


  (set (make-local-variable 'company-backends) (list (list 'company-capf :with 'company-yasnippet)))

  (set (make-local-variable 'prettify-symbols-alist)
    (list
      '("->" . ?→)
      '("=>" . ?⇒)
      '(".." . ?…)
      ))
  ;; (push '("->" . ?→) prettify-symbols-alist)
  ;; (push '("=>" . ?⇒) prettify-symbols-alist)

  (prettify-symbols-mode t)
  )

  (setq dap-cpptools-extension-version "1.5.1")

  (with-eval-after-load 'lsp-rust
    (require 'dap-cpptools))

(provide 'customize-rust)
