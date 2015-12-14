;;(setq company-backends (delete 'company-semantic company-backends))

;; (eval-after-load 'company
;;   `(lambda ()
;;      (setq company-backends ())
;;      (add-to-list 'company-backends 'company-irony)
;;      (add-to-list 'company-backends 'company-keywords)
;;      (add-to-list 'company-backends 'company-clang)
;;      (add-to-list 'company-backends 'company-c-headers)
;;      (add-to-list 'company-backends 'company-yasnippet)
;;      (add-to-list 'company-backends 'company-semantic)
;;      (add-to-list 'company-backends 'company-gtags)
;;      )
;;   )

(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.2.0/")
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/")
(add-to-list 'company-c-headers-path-system "/usr/include/qt/")

(require 'semantic/ia)
(require 'semantic/bovine)
(require 'semantic/bovine/gcc)
(require 'semantic/senator)

;;; customize company-mode
(defun my/c-mode-common-hook ()
  ;; Key bidnings settings
  (local-set-key (kbd "s-j") 'semantic-ia-fast-jump)
  (local-set-key (kbd "s-q") 'semantic-analyze-proto-impl-toggle)
  (local-set-key (kbd "s-/") 'company-c-headers)
  (irony-mode 1)
  ;; company
  (set (make-local-variable 'company-backends)
       '(
         ;;(company-clang)
         (company-semantic :with company-keywords :with company-yasnippet :with company-irony)
         ;; (company-gtags)
         ;;company-c-headers
         ;;
         ;;
         )
       )
  )

(add-hook 'c-mode-common-hook 'my/c-mode-common-hook)

(semantic-mode 1)
(require 'my-ede-project)

;; Qt
(add-to-list 'auto-mode-alist '("/usr/include/qt" . c++-mode))

(semantic-add-system-include "/usr/include/qt" 'c++-mode)

;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;;              "/usr/include/qt/QtCore/qconfig.h")
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;;              "/usr/include/qt/QtCore/qconfig-dist.h")


; (global-semantic-idle-scheduler-mode 1)


(provide 'c-common-settings)
