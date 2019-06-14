(require 'customize-rust)
(require 'customize-common-c)
(require 'customize-python)

;; C++
(setq auto-mode-alist
	  (cons '("\\.ipp" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
  (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.hh$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.hpp$" . c++-mode) auto-mode-alist))

(setq auto-mode-alist
	  (cons '("\\.inl" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
	  (cons '("\\.glsl" . c++-mode) auto-mode-alist))

;; Rust
 (setq auto-mode-alist
    (cons '("\\.rs" . rustic-mode)
      (assq-delete-all
        (car (rassoc 'rust-mode auto-mode-alist))
        (assq-delete-all
          (car (rassoc 'rustic-mode auto-mode-alist))
          auto-mode-alist)))
   )

(require 'capnp-mode)
(add-to-list 'auto-mode-alist '("\\.capnp\\'" . capnp-mode))
(defun my/capnp-mode-hook ()
  ;; company-mode settings
  (
    (set (make-local-variable 'company-backends)
      '(
         (company-abbrev)
         )
      )
    )
  )

(add-hook 'capnp-mode-hook 'my/capnp-mode-hook)

;; js

(use-package vue-mode
  :config
  ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
  (setq mmm-submode-decoration-level 0))
(use-package pug-mode)

;; elisp
(defun my/lisp-mode-hook ()
  ;; company-mode settings
  (set (make-local-variable 'company-backends)
       '(
         (company-elisp :with company-yasnippet)
         )
    )
  (company-mode)
  (eldoc-mode t)
  )

(add-hook 'emacs-lisp-mode-hook 'my/lisp-mode-hook)

;;; jinja2
(use-package jinja2-mode)
(use-package mmm-jinja2)


;; Python
(setq auto-mode-alist
	  (cons '("SConstruct" . python-mode) auto-mode-alist))

(setq auto-mode-alist
	  (cons '("SConscript" . python-mode) auto-mode-alist))

;; ;;; customize company-mode
;; (defun my/python-mode-hook ()
;;   (jedi-mode t)
;;   (eldoc-mode t)
;;   (local-set-key (kbd "s-j") 'semantic-ia-fast-jump)
;;   (flycheck-mode t)
;;   ;; company-mode settings
;;   (set (make-local-variable 'company-backends)
;;        '(
;;          (company-jedi
;;           :with company-keywords
;;           :with company-yasnippet
;;           )
;;          )
;;        )
;;   )

;; (add-hook 'python-mode-hook 'my/python-mode-hook)


;; ;; CMake
;; (setq auto-mode-alist
;; 	  (append '(("CMakeLists\\.txt\\'" . cmake-mode)
;; 				("\\.cmake\\'" . cmake-mode))
;; 			  auto-mode-alist))


;; ;;; Protobuf

;; (defun my/protobuf-hook ()
;;   (set (make-local-variable 'company-backends)
;;        '(
;;          (company-dabbrev :with company-keywords)
;;          )
;;        )
;;   )
;; (add-hook 'protobuf-mode-hook 'my/protobuf-hook)


;;; Configs
(setq auto-mode-alist
      (cons '("PKGBUILD" . conf-mode) auto-mode-alist))

;; (defun my/config-hook ()
;;   (set (make-local-variable 'company-backends)
;;        '(
;;          (company-dabbrev)
;;          )
;;        )
;;   )
;; (add-hook 'conf-mode-hook 'my/config-hook)


;;; QML
(use-package
  qml-mode
  :init (progn
          ;; (setq auto-mode-alist (cons '("\\.qml" . qml-mode) auto-mode-alist))
          
          )
  )
;; (defun my/qml-hook ()
;;   ;; (setq (make-local-variable 'company-backends)
;;   ;;   '((company-qml))
;;   ;;   )
;;   (eldoc-mode t)
;;   (setq js-indent-level 4)
;;   )

;; (add-hook 'qml-mode-hook 'my/qml-hook)


;;; Yaml
(use-package yafolding)
(use-package yaml-mode
  :hook (yaml-mode . my/yaml-mode-hook)
  :config (defun my/yaml-mode-hook ()
    (yafolding-mode t)
    )

  :bind (
          ("s-\\" . yafolding-toggle-element)
          ("s-;" . yafolding-toggle-all)
          )
  )
;;; qrc as XML
(setq auto-mode-alist
      (cons '("\\.qrc" . xml-mode) auto-mode-alist))


;;; groovy and enkinsfile
(use-package groovy-mode)

(provide 'customize-files-type)
