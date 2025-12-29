(defvar python-predefined-commands
  '(
     ("pyright" . ("pyright \"%s\"" compilation-mode))
     ("error based" . ("basedpyright --level error \"%s\"" compilation-mode))
     ("all based" . ("basedpyright  \"%s\"" compilation-mode))
     ("black" . ("black  \"%s\"" compilation-mode))

   )
  "Альяс → (команда-с-плейсхолдером %s . major-mode)")


(defun run-command-on-current-file (command-alias)
  "run command for current file"
  (interactive
   (list (completing-read "Choose command: "
                          (mapcar 'car python-predefined-commands))))
  (let* ((cmd-info (cdr (assoc command-alias python-predefined-commands)))
         (filename (buffer-file-name))
         (command (car cmd-info))
         (mode (cadr cmd-info))
         (buffer-name (format "*%s: %s*" command-alias
                             (file-name-nondirectory filename))))
    (unless cmd-info
      (error "Unexpected level: %s" command-alias))
    (unless filename
      (error "Буфер не связан с файлом"))
    (when (buffer-modified-p) (save-buffer))
    (with-current-buffer (get-buffer-create buffer-name)
      (setq buffer-read-only nil)
      (erase-buffer)
      (insert (shell-command-to-string (format command filename)))
      (funcall mode)
      (setq buffer-read-only t))
    (display-buffer buffer-name)))

(defun run-pyright (command-alias)
  "Запуск команды для текущего Python-файла"
  (interactive (list (completing-read "Choose level: "
                                    (mapcar 'car python-predefined-commands))))
  (run-command-on-current-file command-alias))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                         (lsp)))
  )

;; (add-to-list 'compilation-error-regexp-alist 'my-python-typechecker)
;; (add-to-list 'compilation-error-regexp-alist-alist
;;              '(my-python-typechecker
;;                "^ *\\([^:\n]+\\):\\([0-9]+\\):\\([0-9]+\\) - \\(error\\|warning\\):"
;;                1 2 3 (4)))

(add-to-list 'compilation-error-regexp-alist 'my-python-warning)
(add-to-list 'compilation-error-regexp-alist-alist
             '(my-python-warning
               "^ *\\([^:\n]+\\):\\([0-9]+\\):\\([0-9]+\\) - warning:"
               1 2 3 1))

;; error
(add-to-list 'compilation-error-regexp-alist 'my-python-error)
(add-to-list 'compilation-error-regexp-alist-alist
             '(my-python-error
               "^ *\\([^:\n]+\\):\\([0-9]+\\):\\([0-9]+\\) - error:"
               1 2 3 2))

(use-package lsp-mode
  :commands lsp
  :config (add-hook 'python-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends) (list (list 'company-capf :with 'company-yasnippet)))
              (local-set-key (kbd "C-c r r") 'run-pyright)

              (lsp)
              )))

;(setq python-mode-hook nil)
(provide 'customize-python)
