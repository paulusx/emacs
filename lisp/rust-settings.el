;;; begin rust conf

(add-to-list 'load-path "~/.emacs.d/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


(setq racer-cmd "~/.emacs.d/racer/target/release/racer")
(setq racer-rust-src-path "/home/paulus/projects/rust/src")

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(eval-after-load "rust-mode" '(require 'racer))

(setq company-tooltip-align-annotations t)

;; (cond ((file-exists-p racer-rust-src-path)

;;        (setq racer-cmd "~/.emacs.d/racer/target/release/racer")
;;        (add-to-list 'load-path "~/.emacs.d/racer/editors/emacs/")
;;        (eval-after-load "rust-mode" '(require 'racer))
;;        (add-hook 'rust-mode-hook #'racer-mode)
;; 	   (add-hook 'racer-mode-hook #'eldoc-mode)

;;        (global-set-key (kbd "TAB") #'company-complete-common-or-cycle)
;; 	   (setq company-tooltip-align-annotations t)

;; 	   )
;; 	  (t
;; 	   (message "Need download Rust sources! (http://static.rust-lang.org/dist/rustc-nightly-src.tar.gz)")
;; 	   (error "Not found dir with sources of Rust: «%s»" racer-rust-src-path))
;; 	  )

;;; end rust conf


(provide 'rust-settings)
