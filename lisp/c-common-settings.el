(setq company-backends (delete 'company-semantic company-backends))



(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.2.0/")
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/")

(require 'semantic/senator)
;;; customize company-mode
(defun my/c-mode-common-hook ()
  ;; (push 'company-clang 'company-backends)
  ;; (push 'company-c-headers 'company-backends)
  ;; (push 'company-gtags 'company-backends)
  ;; (push 'company-yasnippet 'company-backends)
  ;; Key bidnings settings
  (local-set-key (kbd "s-j") 'semantic-ia-fast-jump)
  (local-set-key (kbd "s-/") 'senator-fold-tag-toggle)

  )

(add-hook 'c-mode-common-hook 'my/c-mode-common-hook)

;; (require 'cc-mode)



; (global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
(require 'my-ede-project)

(provide 'c-common-settings)
