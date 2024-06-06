(require 'customize-rust)
(require 'customize-common-c)
(require 'customize-python)
(require 'customize-flutter)


;; template C++
(use-package mmm-jinja2)


(mmm-add-mode-ext-class nil "\\.template." 'jinja2)
(setq auto-mode-alist
  (cons '("\\.template.cc$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
  (cons '("\\.jinja2.cc$" . c++-mode) auto-mode-alist))

;; capnp
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
(setq exec-path (append exec-path '("~/.node_modules/bin/")))
(setq lsp-prefer-flymake nil)
;;(use-package typescript-mode :ensure t)

(use-package js2-mode :ensure t
  :config (progn
            (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
            (add-to-list 'lsp-language-id-configuration '(js2-mode . "javascript"))
            )

  :hook (js2-mode . (lambda ()
                      (lsp)
                      )
          )
  )

(setq lsp-print-io t)
(setq lsp-trace t)
(setq lsp-print-performance t)

(use-package vue-mode
  :config
  ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
  (setq mmm-submode-decoration-level 0))
(use-package pug-mode)

;; TypeScript
(use-package typescript-mode :ensure t)

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


;;; Configs
(setq auto-mode-alist
      (cons '("PKGBUILD" . conf-mode) auto-mode-alist))

;;; QML
(use-package company-qml)
(use-package
  qml-mode
  :init (progn
          ;; (setq auto-mode-alist (cons '("\\.qml" . qml-mode) auto-mode-alist))
          
          )
  :hook (qml-mode .
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 4)
            (add-to-list 'company-backends 'company-qml)
            (company-mode)
            )
          )
  )

;;; Idris2
(use-package idris-mode
  :hook (idris-mode . lsp)
  )

;;; Yaml
(use-package yafolding)
(use-package yaml-mode
  :hook (yaml-mode . my/yaml-mode-hook)
  :config (defun my/yaml-mode-hook ()
            (yafolding-mode t)
            (add-to-list 'company-backends 'company-files)
            (lsp-mode t)
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
(use-package groovy-mode
  :ensure t
  :hook (groovy-mode . lsp)
  :config (progn
            (add-to-list 'lsp-language-id-configuration '(groovy-mode . "groovy"))
            )

  :hook (groovy-mode . (lambda ()
                      (lsp)
                      )
          )


  )

;;; CMake
(use-package cmake-mode)

;;; systemd unit
(use-package systemd)

;;; openscad
(use-package scad-mode
  :config (progn
;;            (use-package scad-preview)
;;            (scad-preview-mode)
;;            (bind-key (kbd "s-kp-right") scad-preview-roty+)
            )
  :bind (
          ;;("s-kp-right" . scad-preview-roty+)
          ;; ("s-kp-left;" . scad-preview-roty-)
          ;; ("s-kp-up" . scad-preview-rotx-)
          ;; ("s-kp-down;" . scad-preview-rotx+)

          )
  )

;;; i3 config
(use-package i3wm-config-mode)

;;; cuda
(use-package cuda-mode)

(use-package haskell-mode)

(use-package nginx-mode)
(use-package company-nginx)

(use-package arduino-mode)

(use-package docker)
(use-package docker-cli)
(use-package docker-api)
(use-package dockerfile-mode)

;;; org-mode

(defun my/org-mode-hook ()
  (progn
    (local-unset-key (kbd "C-<return>"))
    (local-set-key (kbd "C-s-<return>") 'org-insert-heading-respect-content)
    (local-set-key (kbd "C-<return>") 'company-complete)
    )
  )

(add-hook 'org-mode-hook 'my/org-mode-hook)

;;; UML
(use-package plantuml-mode)
(use-package flycheck-plantuml)

;;; Maxima
(use-package maxima)
(use-package company-maxima)

(provide 'customize-files-type)
