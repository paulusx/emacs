(setq company-backends (delete 'company-semantic company-backends))



(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.2.0/")
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-unknown-linux-gnu/5.2.0/include/")


;;; customize company-mode
(defun my/c-mode-common-hook ()
  (add-to-list 'company-backends 'company-c-headers)
  (add-to-list 'company-backends 'company-clang)
  (add-to-list 'company-backends 'company-gtags)
  (add-to-list 'company-backends 'company-yasnippet)
  ;; Key bidnings settings
  (local-set-key (kbd "s-j") 'semantic-ia-fast-jump)


  )

(add-hook 'c-mode-common-hook 'my/c-mode-common-hook)

;; (require 'cc-mode)



; (global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
(require 'ede/cpp-root)
(ede-enable-generic-projects)

(ede-cpp-root-project "common-proj"
                      :name "common-proj"
                      :file "~/projects/GTAGS"
                      :include-path '("/artecsdk/ext/3dproc/include"
                                      "/artecsdk/ext/cameras/include"
                                      "/artecsdk/ext/config-enumerator/include"
                                      "/artecsdk/ext/engine/include"
                                      "/artecsdk/ext/flyuart/include"
                                      "/artecsdk/ext/tunecols/include"
                                      "/artecsdk/ext/virtualization-kit/include"
                                      "/artecsdk/ext/3drec/include"
                                      "/artecsdk/algorithms/include"
                                      "/artecsdk/base/include"
                                      "/artecsdk/base/tref-sample/include"
                                      "/artecsdk/capturing/include"
                                      "/artecsdk/scanning/include"
                                      "/app-easy-scan/libs/es-core/defs"
                                      "/lib-rendering/a3d"
                                      "/squid-conf/include"
                                      )
                      ;; :system-include-path '()
                      )


(provide 'c-common-settings)
