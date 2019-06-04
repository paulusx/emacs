;;; begin rust conf

(require 'customize-env)
(use-package flycheck-rust)
(use-package rust-mode)
(use-package racer)
(use-package company-racer)
(use-package cargo
  :after rust-mode
  :hook ((rust-mode . cargo-minor-mode)))


(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(setq racer-cmd "racer")

(eval-after-load "rust-mode" '(require 'racer))

(setq company-tooltip-align-annotations t)

(defun my/rust-mode-hook ()

  (local-set-key (kbd "s-z") 'cargo-process-build)
  (local-set-key (kbd "s-j") 'racer-find-definition)
  (local-set-key (kbd "s-/") 'racer-describe)
  (local-set-key (kbd "s-f") 'rustfmt-format-buffer)

  (local-set-key (kbd "C-c r t") 'cargo-process-test)
  (local-set-key (kbd "C-c r c") 'cargo-process-clippy)
  (local-set-key (kbd "C-c r r") 'cargo-process-run)

  (push '("->" . ?→) prettify-symbols-alist)
  (push '("=>" . ?⇒) prettify-symbols-alist)

  (prettify-symbols-mode t)

  (set (make-local-variable 'company-backends)
    '(
       (company-racer); :with company-yasnippet)
       (company-yasnippet)
       )
    )
  )

(defun my/cargo-process-mode-hook ()
  "Cargo-process mode hook"
  (visual-line-mode t)
  )

(add-hook 'racer-mode-hook 'my/rust-mode-hook)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook 'flycheck-mode)
(add-hook 'cargo-process-mode-hook 'my/cargo-process-mode-hook)

(provide 'customize-rust)
