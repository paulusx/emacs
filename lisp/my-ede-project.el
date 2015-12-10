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
                                      "/transport/include"
                                      "/callibrations-manager/include"
                                      )
                      :system-include-path '("/usr/include/qt"
                                             "/usr/include"
                                             )
                      )

(provide 'my-ede-project)
