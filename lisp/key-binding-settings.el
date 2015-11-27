;; Key bidnings settings
(global-unset-key "\C-xf")
(global-unset-key "\C-z")

(global-set-key [f2] 'menu-bar-mode)
(global-set-key (kbd "s-z") 'compile)

(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)
(global-set-key "\C-cc" 'comment-or-uncomment-region)

(global-set-key (kbd "s-w") 'windmove-up)
(global-set-key (kbd "s-a") 'windmove-left)
(global-set-key (kbd "s-d") 'windmove-right)
(global-set-key (kbd "s-s") 'windmove-down) 

(global-set-key [s-up] 'windmove-up)
(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-down] 'windmove-down)

<<<<<<< HEAD
(global-set-key [C-return] #'company-complete-common-or-cycle)
(global-set-key (kbd "s-.") 'company-files)
||||||| merged common ancestors
(global-set-key [C-return] #'company-indent-or-complete-common)

;;; Code navigation

=======
(global-set-key [C-return] #'company-indent-or-complete-common)

(global-set-key (kbd "s-i") 'idle-highlight-mode)


;;; Code navigation

>>>>>>> fdf792782915879bdc80aa4ce582d159f8fb7ded


(provide 'key-binding-settings)
