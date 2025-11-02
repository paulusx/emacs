(defun lsp-ui-sideline--align (&rest lengths)
  "Align sideline string by LENGTHS from the right of the window."
  (+ (apply '+ lengths)
     (if (display-graphic-p) 30 20)))

(setq lsp-log-io nil) ; if set to true can cause a performance hit


(defun flyspell-check-camelcase-word-p (word)
  "Check each part of a CamelCase WORD separately."
  (let ((parts (split-string (downcase word) "[[:upper:]]" t)))
    (catch 'valid
      (dolist (part parts t)
        (unless (flyspell-word-valid-p part)
          (throw 'valid nil))))))

(defun setup-flyspell-for-camelcase ()
  "Configure Flyspell to handle CamelCase in programming modes."
  (setq flyspell-generic-check-word-predicate
        #'flyspell-check-camelcase-word-p))

(add-hook 'prog-mode-hook #'setup-flyspell-for-camelcase)

(provide 'fixups)
