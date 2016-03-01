;;; begin rust conf

(add-to-list 'load-path "~/.emacs.d/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(setq racer-rust-src-path "~/projects/rust/src")
(setq racer-cmd "~/.emacs.d/racer/target/release/racer")

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(eval-after-load "rust-mode" '(require 'racer))

(setq company-tooltip-align-annotations t)


(provide 'rust-settings)
