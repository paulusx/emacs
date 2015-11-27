(require 'wl)
(require 'elmo)

; Days since last access, i.e atime. (default: 50)
(elmo-cache-expire-by-age  14)

; Kilobytes. (default 30000)
(elmo-cache-expire-by-size 10000)


(defun my/set-wl-sender-billyiii ()
  (interactive)
  (setq wl-from "BillyIII <me@billyiii.me>")
  (setq wl-smtp-connection-type 'ssl)
  (setq wl-smtp-posting-user "me_billyiii.me")
  (setq wl-smtp-posting-server "smtp.mxes.net")
  (setq wl-smtp-posting-port 465)
  (setq wl-smtp-authenticate-type "plain")
  (setq wl-smtp-authenticate-realm nil))

(my/set-wl-sender-billyiii)


(setq wl-biff-check-folder-list '("%INBOX:me_billyiii.me/clear@mail.mxes.net:993!"
                                  "%_INBOX_Sorted/Games:me_billyiii.me/clear@mail.mxes.net:993!"
                                  "%_INBOX_Sorted/Social:me_billyiii.me/clear@mail.mxes.net:993!"))

(setq wl-summary-force-prefetch-folder-list '("^%_Sync:"))
