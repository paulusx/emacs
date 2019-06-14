;;; begin rust conf

(require 'customize-env)

(setq company-tooltip-align-annotations t)

(defun my/rustic-mode-hook ()
  (local-set-key (kbd "s-j") 'lsp-find-definition)
  (local-set-key (kbd "s-z") 'rustic-cargo-build)
  (local-set-key (kbd "C-c r t") 'rustic-cargo-test)
  (local-set-key (kbd "C-c r c") 'rustic-cargo-clippy)
  (local-set-key (kbd "C-c r r") 'rustic-cargo-run)

  (push '("->" . ?→) prettify-symbols-alist)
  (push '("=>" . ?⇒) prettify-symbols-alist)

  (prettify-symbols-mode t)
  (format "%s" auto-mode-alist)
  (setq auto-mode-alist
    (cons '("\\.rs" . rustic-mode)
      (assq-delete-all
        (car (rassoc 'rust-mode auto-mode-alist))
        (assq-delete-all
          (car (rassoc 'rustic-mode auto-mode-alist))
          auto-mode-alist)))
    )

  )

(defun my/cargo-process-mode-hook ()
  "Cargo-process mode hook"
  (visual-line-mode t)
  )

(add-hook 'rust-mode-hook (lambda () (rustic-mode)))

(use-package rustic
  :config
  (setenv "RUST_BACKTRACE" "full")
  (setenv "RUST_LOG" "rls::=debug")
  (setq auto-mode-alist
    (cons '("\\.rs" . rustic-mode)
      (assq-delete-all
        (car (rassoc 'rust-mode auto-mode-alist))
        (assq-delete-all
          (car (rassoc 'rustic-mode auto-mode-alist))
          auto-mode-alist))))
  :hook (rustic-mode . my/rustic-mode-hook)
  )

(provide 'customize-rust)
