

;;; customize company-mode
(defun my/c-mode-common-hook ()
  (add-to-list 'company-backends 'company-c-headers)
  )

(add-hook 'c-mode-common-hook 'my/c-mode-common-hook)



(provide 'c-common-settings)
