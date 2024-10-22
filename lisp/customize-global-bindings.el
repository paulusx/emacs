;; Key bidnings settings
(global-unset-key "\C-z")

(global-unset-key "\C-s")

(use-package swiper
  :bind (("C-s" . swiper))
  )

;;(global-set-key "\C-s" 'swiper)

(global-set-key [f2] 'menu-bar-mode)
(global-set-key (kbd "s-z") 'compile)

(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
(global-set-key "\C-cc" 'comment-or-uncomment-region)

(use-package goto-last-change
  :bind (
    ("s-<" . goto-last-change-with-auto-marks)
    ("s->" . goto-last-change-reverse))
  )


(use-package
  bm
  :bind (
          ("s-b" . 'bm-toggle)
          ("s-," . 'bm-previous)
          ("s-." . 'bm-next)
          )
  )

(global-set-key (kbd "s-w") 'windmove-up)
(global-set-key (kbd "s-a") 'windmove-left)
(global-set-key (kbd "s-d") 'windmove-right)
(global-set-key (kbd "s-s") 'windmove-down) 
(global-set-key (kbd "s-e") 'other-frame)
(global-set-key (kbd "s-g") 'counsel-rg)


(global-set-key [s-up] 'windmove-up)
(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-down] 'windmove-down)

(global-set-key (kbd "s-i") 'idle-highlight-mode)

(global-set-key [C-return] #'company-complete-common-or-cycle)
(global-set-key (kbd "s-/") 'company-files)

(global-set-key (kbd "s-'") 'string-inflection-all-cycle)

(provide 'customize-global-bindings)
