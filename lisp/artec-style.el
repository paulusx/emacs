(defun add-artec-style ()
  (c-add-style "artec"
    (c-add-style ""
  '("stroustrup"
     (c-basic-offset . 4)               ; Guessed value
     (c-offsets-alist
       (access-label . 0)               ; Guessed value
       (arglist-cont . 0)               ; Guessed value
       (arglist-intro . +)              ; Guessed value
       (block-close . 0)                ; Guessed value
       (brace-list-close . 0)           ; Guessed value
       (brace-list-entry . 0)           ; Guessed value
       (brace-list-intro . -)           ; Guessed value
       (case-label . 0)                 ; Guessed value
       (class-close . 0)                ; Guessed value
       (class-open . 0)                 ; Guessed value
       (cpp-define-intro . +)           ; Guessed value
       (defun-block-intro . +)          ; Guessed value
       (defun-close . 0)                ; Guessed value
       (defun-open . 0)                 ; Guessed value
       (else-clause . 0)                ; Guessed value
       (inclass . +)                    ; Guessed value
       (inline-close . 0)               ; Guessed value
       (innamespace . 0)                ; Guessed value
       (label . 0)                      ; Guessed value
       (member-init-intro . +)          ; Guessed value
       (namespace-close . 0)            ; Guessed value
       (statement . 0)                  ; Guessed value
       (statement-block-intro . +)      ; Guessed value
       (statement-case-intro . +)       ; Guessed value
       (statement-cont . +)             ; Guessed value
       (substatement-open . 0)          ; Guessed value
       (topmost-intro . 0)              ; Guessed value
       (topmost-intro-cont . 0)         ; Guessed value
       (annotation-top-cont . 0)
       (annotation-var-cont . +)
       (arglist-close . c-lineup-close-paren)
       (arglist-cont-nonempty . c-lineup-arglist)
       (block-open . 0)
       (brace-entry-open . 0)
       (brace-list-open . 0)
       (c . c-lineup-C-comments)
       (catch-clause . 0)
       (comment-intro . c-lineup-comment)
       (composition-close . 0)
       (composition-open . 0)
       (cpp-macro . -1000)
       (cpp-macro-cont . +)
       (do-while-closure . 0)
       (extern-lang-close . 0)
       (extern-lang-open . 0)
       (friend . 0)
       (func-decl-cont . +)
       (incomposition . +)
       (inexpr-class . +)
       (inexpr-statement . +)
       (inextern-lang . +)
       (inher-cont . c-lineup-multi-inher)
       (inher-intro . +)
       (inlambda . 0)
       (inline-open . +)
       (inmodule . +)
       (knr-argdecl . 0)
       (knr-argdecl-intro . +)
       (lambda-intro-cont . +)
       (member-init-cont . c-lineup-multi-inher)
       (module-close . 0)
       (module-open . 0)
       (namespace-open . 0)
       (objc-method-args-cont . c-lineup-ObjC-method-args)
       (objc-method-call-cont c-lineup-ObjC-method-call-colons c-lineup-ObjC-method-call +)
       (objc-method-intro .
         [0])
       (statement-case-open . 0)
       (stream-op . c-lineup-streamop)
       (string . -1000)
       (substatement . +)
       (substatement-label . 0)
       (template-args-cont c-lineup-template-args +))))
))

(provide 'artec-style)
