(require 'ede/cpp-root)
(ede-enable-generic-projects)

(ede-cpp-root-project "common-proj"
                      :name "common-proj"
                      :file "~/projects/GTAGS"
                      :include-path '("/app-easy-scan/libs/artecsdk/ext/3dproc/include"
                                      "/app-easy-scan/libs/artecsdk/ext/cameras/include"
                                      "/app-easy-scan/libs/artecsdk/ext/config-enumerator/include"
                                      "/app-easy-scan/libs/artecsdk/ext/engine/include"
                                      "/app-easy-scan/libs/artecsdk/ext/flyuart/include"
                                      "/app-easy-scan/libs/artecsdk/ext/tunecols/include"
                                      "/app-easy-scan/libs/artecsdk/ext/virtualization-kit/include"
                                      "/app-easy-scan/libs/artecsdk/ext/3drec/include"
                                      "/app-easy-scan/libs/artecsdk/algorithms/include"
                                      "/app-easy-scan/libs/artecsdk/base/include"
                                      "/app-easy-scan/libs/artecsdk/base/tref-sample/include"
                                      "/app-easy-scan/libs/artecsdk/capturing/include"
                                      "/app-easy-scan/libs/artecsdk/scanning/include"
                                      "/app-easy-scan/libs/es-core/defs"
                                      "/app-easy-scan/libs/lib-rendering/a3d"
                                      "/squid-conf/include"
                                      "/transport/include"
                                      "/app-easy-scan/libs/callibration-manager/include"
                                      )
                      :system-include-path '("/usr/include/qt"
                                             "/usr/include"
                                             )
                      )

(provide 'my-ede-project)
