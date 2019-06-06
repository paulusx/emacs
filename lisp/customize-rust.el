;;; begin rust conf

(require 'customize-env)

(use-package cargo
  :after rust-mode
  :hook ((rust-mode . cargo-minor-mode)))

(setq company-tooltip-align-annotations t)

(defun my/rust-mode-hook ()
  (local-set-key (kbd "s-j") 'lsp-find-definition)
  (local-set-key (kbd "s-z") 'rustic-cargo-build)
  (local-set-key (kbd "C-c r t") 'rustic-cargo-test)
  (local-set-key (kbd "C-c r c") 'rustic-cargo-clippy)
  (local-set-key (kbd "C-c r r") 'rustic-cargo-run)

  (push '("->" . ?→) prettify-symbols-alist)
  (push '("=>" . ?⇒) prettify-symbols-alist)

  (prettify-symbols-mode t)
  )

(defun my/cargo-process-mode-hook ()
  "Cargo-process mode hook"
  (visual-line-mode t)
  )

(use-package rustic
  :config
  (setenv "RUST_BACKTRACE" "full")
  (setenv "RUST_LOG" "rls::=debug")
  :hook (rustic-mode . my/rust-mode-hook)
  )

(provide 'customize-rust)
