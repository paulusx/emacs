;; C++
(setq auto-mode-alist
	  (cons '("\\.ipp" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.h" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.inl" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.glsl" . c++-mode) auto-mode-alist))

(require 'c-common-settings)


;; elisp
(defun my/lisp-mode-hook ()
;;  (local-set-key (kbd "s-j") 'semantic-ia-fast-jump)
  ;; company-mode settings
  (set (make-local-variable 'company-backends)
       '(
         (company-elisp
          :with company-keywords
          :with company-yasnippet
          )
         )
       )
  )


(add-hook 'lisp-mode-hook 'my/lisp-mode-hook)


;; Python
(setq auto-mode-alist
	  (cons '("SConstruct" . python-mode) auto-mode-alist))

(setq auto-mode-alist
	  (cons '("SConscript" . python-mode) auto-mode-alist))

;;; customize company-mode
(defun my/python-mode-hook ()
  (jedi-mode t)
  (eldoc-mode t)
  (local-set-key (kbd "s-j") 'semantic-ia-fast-jump)

  ;; company-mode settings
  (set (make-local-variable 'company-backends)
       '(
         (company-jedi
          :with company-keywords
          :with company-yasnippet
          )
         )
       )
  )

(add-hook 'python-mode-hook 'my/python-mode-hook)


;; CMake
(setq auto-mode-alist
	  (append '(("CMakeLists\\.txt\\'" . cmake-mode)
				("\\.cmake\\'" . cmake-mode))
			  auto-mode-alist))


;;; Rust
(defun my/rust-mode-hook ()
  (add-to-list 'company-backends 'company-racer)
  )

(add-hook 'rust-mode-hook 'my/rust-mode-hook)


(provide 'associations-files-settings)
