

(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.2.0/")
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/")

;;; customize company-mode
(defun my/c-mode-common-hook ()
  (add-to-list 'company-backends 'company-c-headers)
  (add-to-list 'company-backends 'company-clang)
  (add-to-list 'company-backends 'company-gtags)
  )

(add-hook 'c-mode-common-hook 'my/c-mode-common-hook)

;; (require 'cc-mode)
;; (require 'semantic)

; (global-semanticdb-minor-mode 1)
; (global-semantic-idle-scheduler-mode 1)

; (semantic-mode 1)



(provide 'c-common-settings)
