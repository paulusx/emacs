~/.emacs.d/init.el

(with-eval-after-load 'company-ngram
  ; ~/data/ngram/*.txt are used as data
  (setq company-ngram-data-dir "~/data/ngram")
  ; company-ngram does not support python2
  (setq company-ngram-python "/path/to/python3")
  (company-ngram-init)
  (add-to-list 'company-backends 'company-ngram-backend)
  ; or use `M-x company-ngram-turn-on' and
  ; `M-x company-ngram-turn-off' on individual buffers
  )
(require 'company-ngram nil t)
