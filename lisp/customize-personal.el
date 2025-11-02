;; ido mode
(require 'ido)
(add-to-list 'ido-ignore-files "\.qmlc")
(ido-mode t)

;;  Именование буферов с одинаковыми именами
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator " ▶ ")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq post-forward-angle-brackets 'post-forward-angle-brackets)

(use-package
  rainbow-delimiters
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
        (setq rainbow-delimiters-max-face-count 9))

(use-package which-key)
(which-key-mode)

(use-package hover)
(use-package validate :ensure t)
(use-package counsel :ensure t)
(use-package idle-highlight-mode :ensure t)
(use-package yasnippet-snippets :ensure t)


(use-package yasnippet                  ; Snippets
  :ensure t
  :config
  (validate-setq
    yas-verbosity 1                      ; No need to be so verbose
    yas-wrap-around-region t)

  (with-eval-after-load 'yasnippet
    (validate-setq yas-snippet-dirs '(yasnippet-snippets-dir)))

  (add-to-list 'yas-snippet-dirs "/home/paulus/.emacs.d/snippets/")

  (yas-reload-all)
  (define-key yas-minor-mode-map (kbd "C-c y") #'yas-expand)
  (yas-global-mode))


(use-package fzf
  :bind (
          ("C-x f" . (lambda () (interactive) (fzf-find-file-in-dir "~/projects/")))
          )
  )


(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)


(use-package minimap
  :ensure t
)

(use-package rainbow-identifiers
  :ensure t
)

(setq-default save-place t) ;; Помнить, где был курсор в прошлый раз
(fset 'yes-or-no-p 'y-or-n-p) ;;; Вместо yes и no понимать y и n
(menu-bar-mode 1)
(scroll-bar-mode -1)    ;;; Скроллбар не нужен
(tool-bar-mode -1)      ;;; Тулбар не нужен
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode)) ;;; Показывать номера строк всегда

;; Показывать отступы во всех режимах
(use-package
  indent-guide
  :config (indent-guide-global-mode 1))

(setq-default display-buffer-reuse-frames t)

;;; Дерево отмены
;; (use-package
;;   undo-tree
;;   :config (global-undo-tree-mode 1))

(use-package affe)

(use-package emojify
  :hook (after-init . global-emojify-mode))

(use-package blamer)
(use-package syncthing)

(use-package magit)
(use-package websocket)
(use-package ibrowse)


(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let* ((name (buffer-name))
        (filename (buffer-file-name))
        (basename (file-name-nondirectory filename)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " (file-name-directory filename) basename nil basename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

;; (global-set-key (kbd "C-c r") 'rename-current-buffer-file)

(defun to-ansi-color (&optional beg end)
  "Interpret ANSI color esacape sequence by colorifying cotent.
Operate on selected region on whole buffer."
  (interactive
   (if (use-region-p)
       (list (region-beginning) (region-end))
     (list (point-min) (point-max))))
(ansi-color-apply-on-region beg end))

(ignore-errors
  (require 'ansi-color)
  (defun my-colorize-compilation-buffer ()
    (when (eq major-mode 'compilation-mode)
      (ansi-color-apply-on-region compilation-filter-start (point-max))))
  (add-hook 'compilation-filter-hook 'my-colorize-compilation-buffer))

;;; WhiteSpaces clean-up
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; open URL in browser
(global-set-key (kbd "C-c b") 'browse-url-at-point)

(defun my-prog-hook () ""
  (progn
    (flyspell-prog-mode)
    (auto-revert-mode t)
    ))

(add-hook 'prog-mode-hook 'my-prog-hook)

(use-package ement)


(provide 'customize-personal)
