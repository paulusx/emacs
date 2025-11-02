;;; package --- Summary
;;; Commentary:
;;; Main EMACS settings file, load settings from parts.

;;; Code:

(require 'package)

;;; Источники для установки пакетов. Дело в том, что MELPA Stable
;;; содержит не очень свежие версии, поэтому иногда лучше ставить
;;; пакеты из основного репозитория.

(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa"        . "https://melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize nil)

;;; Если пакет use-package не установлен, его нужно скачать и
;;; установить
(unless (package-installed-p 'use-package)
  (message "EMACS install use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

;;; Установили, загрузили, указали, что недостающие пакеты нужно
;;; автоматически загружать и устанавливать.
(require 'use-package)
(setq use-package-always-ensure t)

;;; Указываем откуда брать части настроек.
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory) user-emacs-directory)
        ((boundp 'user-init-directory) user-init-directory)
        (t "~/.emacs.d/")))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(put 'upcase-region 'disabled nil)

(setq lsp-log-io nil) ; if set to true can cause a performance hit

(require 'artec-style)
(add-artec-style)

(setq custom-file "~/.emacs.d/customize.el")

(server-force-delete)

(load-user-file "customize.el")

(require 'customize-theme)
(require 'customize-env)
(require 'customize-files-type)
(require 'customize-global-bindings)
(require 'customize-personal)
(require 'customize-jinja2)


(require 'fixups)
