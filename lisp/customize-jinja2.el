;; Загружаем необходимые пакеты
(use-package mmm-mode :ensure t)
(use-package jinja2-mode :ensure t)

(require 'cc-mode)
(require 'jinja2-mode)


;;;###autoload
(define-derived-mode jinja2-cc-mode cc-mode  "Jinja2[CC]"
  "Major mode for editing jinja2/c++ files"
  :group 'jinja2
  ;; Disabling this because of this emacs bug:
  ;;  http://lists.gnu.org/archive/html/bug-gnu-emacs/2002-09/msg00041.html
  ;; (modify-syntax-entry ?\'  "\"" sgml-mode-syntax-table)
  (set (make-local-variable 'comment-start) "{#")
  (set (make-local-variable 'comment-start-skip) "{#")
  (set (make-local-variable 'comment-end) "#}")
  (set (make-local-variable 'comment-end-skip) "#}")
  ;; it mainly from sgml-mode font lock setting
  (set (make-local-variable 'font-lock-defaults)
       '((
          jinja2-font-lock-keywords
          jinja2-font-lock-keywords-1
          jinja2-font-lock-keywords-2
          jinja2-font-lock-keywords-3)
         nil t nil nil
         (font-lock-syntactic-keywords
          . sgml-font-lock-syntactic-keywords)))
  (set (make-local-variable 'indent-line-function) 'jinja2-indent-line))

(define-key jinja2-mode-map (kbd "C-c c") 'jinja2-close-tag)
(define-key jinja2-mode-map (kbd "C-c t") 'jinja2-insert-tag)
(define-key jinja2-mode-map (kbd "C-c v") 'jinja2-insert-var)
(define-key jinja2-mode-map (kbd "C-c #") 'jinja2-insert-comment)

(when jinja2-enable-indent-on-save
  (add-hook 'jinja2-mode-hook
    (lambda ()
      (add-hook 'after-save-hook 'jinja2-indent-buffer nil 'make-it-local))))

;; (defun my/jinja2-hook () ""
;;   (progn
;;     (electric-indent-mode nil)
;;     ))

;; (add-hook 'jinja2-mode-hook 'my/jinja2-hook)

(add-to-list 'auto-mode-alist '("\\.jinja" . jinja2-mode))

(provide 'customize-jinja2)
