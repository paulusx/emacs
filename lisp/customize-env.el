(setq exec-path (append exec-path
                  '("/run/wrappers/bin" "/home/paulus/.nix-profile/bin" "/home/paulus/.local/state/nix/profile/bin" "/home/paulus/.local/state/nix/profile/bin" "/etc/profiles/per-user/paulus/bin" "/nix/var/nix/profiles/default/bin" "/run/current-system/sw/bin")))

(setenv "PATH" "/run/wrappers/bin:/home/paulus/.nix-profile/bin:/home/paulus/.local/state/nix/profile/bin:/home/paulus/.local/state/nix/profile/bin:/etc/profiles/per-user/paulus/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin")

;;; (setenv "RUST_SRC_PATH" "/home/paulus/projects/rust/src")
(setenv "ARCH_AARCH64_COMPONENTS_ROOT" "/home/paulus/.toolctl/toolchains/current/aarch64-cross")
(setenv "LEELOO_MAIN_QML" "/home/paulus/projects/pkg-leeloo/modules/ui/source/qml/Main.qml")
(setenv "LEELOO_MAIN_WINDOW_QML" "/home/paulus/projects/pkg-leeloo/modules/ui/source/qml/MainWindow.qml")
(setenv "LEELOO_QML_COMPONENTS" "/home/paulus/projects/pkg-leeloo/modules/ui/common-ui/rootfs-data/usr/local/share/leeloo-ui/")
(setenv "LEELOO_TESTDATA" "/home/paulus/testdata/current")
(setenv "CUDA_DIR" "/opt/cuda")
(setenv "MAGICK_OCL_DEVICE" "OFF")

;; (setenv "ARTEC_BS_SM_GENERATOR"
;;   "/home/paulus/projects/pkg-leeloo/modules/state-machine/generator/generator.py")

(setenv "ARTEC_BS_SM_GENERATOR"
  "/home/paulus/projects/pkg-leopard/modules/state-machine/generator/generator.py")

;; (setenv "ARTEC_BS_SM_CONFIG_FILE"
;;   "/home/paulus/projects/pkg-leeloo/modules/config-leo/state-machine/configs/leeloo-statemachine.yaml")

(setenv "ARTEC_BS_SM_CONFIG_FILE"
  "/home/paulus/projects/pkg-leopard/modules/config-leopard/state-machine/configs/leeloo-statemachine.yaml")


(setenv "ARTEC_BS_PROJECT_MANAGER_DBUS_INTROSPECTIONS_DIR"
  "/home/paulus/projects/pkg-leeloo/modules/project-manager/xml/")
(setenv "ARTEC_BS_SM_DBUS_INTROSPECTIONS_DIR"
  "/home/paulus/projects/pkg-leeloo/modules/state-machine/xml/")
(setenv "ARTEC_BS_LEELOO_UI_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/ui/xml/IControl.xml")
(setenv "ARTEC_BS_LEELOO_MA_STATUS_INFO_DAEMON_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/ma-status-info-daemon/xml/IMAStatusInfoDaemon.xml")
(setenv "ARTEC_BS_LEELOO_UPDATER_DAEMON_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/updater-daemon/xml/IUpdater.xml")
(setenv "ARTEC_BS_LEELOO_STATUS_SERVER_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/status-server/xml/IStatus.xml")
(setenv "ARTEC_BS_LEELOO_BUSINESS_LOGIC_DAEMON_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/business-logic/xml/IBusinessLogic.xml")
(setenv "ARTEC_BS_PROJECT_MANAGER_UPLOAD_DBUS_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/project-manager/xml/ICloudUploadInfo.xml")
(setenv "ARTEC_BS_LEELOO_BUNDLE_SWITCHER_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/bundle-switcher/gen/dbus-introspections/BundleSwitcher.xml")
(setenv "ARTEC_BS_LEELOO_FPGA_CONTROL_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/firmware-update-lib/utils/fpga-control/xml/FPGAControl.xml")
(setenv "ARTEC_BS_LEELOO_TARGET_CLOUD_MANAGER_INTROSPECTION"
  "/home/paulus/projects/pkg-leeloo/modules/target-cloud-manager/xml/ITargetCloudManager.xml")
(setenv "ARTEC_BS_PROFILE_NAME"
  "host-ext-qml")
(setenv "ARTEC_BS_LEO_DISPLAY_IMAGE_LIB_PATH"
  "/home/paulus/projects/output/host-ext-qml/lib")
(setenv "ARTEC_BS_LEO_DISPLAY_IMAGE_LIB_NAME"
  "leeloo-leo-display-image-channel")
(setenv "ARTEC_BS_LEO_DISPLAY_IMAGE_HEADERS"
  "/home/paulus/projects/pkg-leeloo/modules/display-image-channel/leo/image-channel-clib/include/leo-display-image/c-wrapper/publisher.h:/home/paulus/projects/pkg-leeloo/modules/display-image-channel/leo/image-channel-clib/include/leo-display-image/c-wrapper/display-data-config.h")
(setenv "ARTEC_BS_LEOPARD_DISPLAY_IMAGE_LIB_PATH"
  "/home/paulus/projects/output/host-ext-qml/lib")
(setenv "ARTEC_BS_LEOPARD_DISPLAY_IMAGE_LIB_NAME"
  "leeloo-leopard-display-image-channel")
(setenv "ARTEC_BS_LEOPARD_DISPLAY_IMAGE_HEADERS"
  "/home/paulus/projects/pkg-leopard/modules/display-image-channel/leopard/image-channel-clib/include/leopard-display-image/c-wrapper/publisher.h:/home/paulus/projects/pkg-leopard/modules/display-image-channel/leopard/image-channel-clib/include/leopard-display-image/c-wrapper/display-data-config.h")
(setenv "ARTEC_BS_LEELOO_CUBEMAP_VISUALIZER_DBUS_INTROSPECTION" "/home/paulus/projects/pkg-leeloo/modules/cubemap-visualizer/app/dbus-introspection/ICubemapsVisualizerControl.xml")
(setenv "DBUS_SYSTEM_LOGIN1_MANAGER_INTROSPECTION" "/usr/share/dbus-1/interfaces/org.freedesktop.login1.Manager.xml")
(setenv "DBUS_SYSTEM_TIMEDATE1_MANAGER_INTROSPECTION" "/home/paulus/.toolctl/toolchains/current/aarch64-cross/usr/share/dbus-1/interfaces/org.freedesktop.timedate1.xml")

(setenv "__LEELOO_SHOW_DEBUG_MESSAGES_ON_BUILDING__" "true")
(setenv "PYTHONPATH" "/home/paulus/projects/pkg-leopard/modules/python-common/rootfs-data/usr/local/bin")
(setenv "ARTEC_BS_GENERATOR_BY_SETTINGS_CONFIGS" "/home/paulus/projects/pkg-leopard/modules/settings-manager/tools/generator/config-from-settings-gen.py")
(setenv "ARTEC_BS_SETTINGS_MANAGER_PATH_TO_SCHEME_BY_PLATFORM" "/home/paulus/projects/pkg-leopard/modules/config-leopard/setting-manager/configs/rootfs-%platform%data/etc/artec/leeloo/settings-manager/scheme.d/*.yaml")
(setenv "ARTEC_BS_SETTINGS_MANAGER_SCHEMA_ROOTS" "/home/paulus/projects/pkg-leopard/modules/config-leopard/setting-manager/configs/rootfs-%platform%data/etc/artec/leeloo/settings-manager/scheme.d/")
(setenv "COLLECT_CONFIGS_PLATFORM" "leopard:devboard")
(setenv "ARTEC_BS_UNIFY_RPC_GENERATOR" "/home/paulus/projects/pkg-leopard/modules/unify-rpc/unify-rpc")
(setenv "ARTEC_BS_LEELOO_UPDATER_DAEMON_LEOPARD_INTROSPECTION" "/home/paulus/projects/pkg-leopard/modules/updater-daemon-leopard/updater_rpc.yaml")
(setenv "ARTEC_BS_SETUP_VERSION_INFO" "/home/paulus/projects/pkg-leopard/modules/version-include/get_version.py")

(setenv "ARTEC_BS_CDSDK_WRAPPER_HEADERS_DIR" "/home/paulus/projects/pkg-s2p/third-party/cdsdk/cdsdk_wrapper")
(setenv "ARTEC_BS_CDSDK_WRAPPER_HEADERS" "/home/paulus/projects/pkg-s2p/third-party/cdsdk/cdsdk_wrapper/cdsdk.h")
(setenv "ARTEC_BS_CDSDK_LIB_DIR" "/home/paulus/projects/output/s2p-host/lib")
(setenv "ARTEC_BS_CDSDK_LIB" "cdsdk")
(setenv "ARTEC_BS_CDSDK_ADDITIONAL_LIBS" "pugixml:udev:b64")
;;; (setenv "" "")


(provide 'customize-env)
