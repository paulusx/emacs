(setq exec-path (append exec-path '("~/.cargo/bin" "/opt/cuda/bin" "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/" "/opt/flutter/bin")))

(setenv "RUST_SRC_PATH" "/home/paulus/projects/rust/src")
(setenv "ARCH_AARCH64_COMPONENTS_ROOT" "/home/paulus/.toolctl/toolchains/current/aarch64-cross")
(setenv "LEELOO_MAIN_QML" "/home/paulus/projects/pkg-leeloo/modules/ui/source/qml/Main.qml")
(setenv "LEELOO_MAIN_WINDOW_QML" "/home/paulus/projects/pkg-leeloo/modules/ui/source/qml/MainWindow.qml")
(setenv "LEELOO_QML_COMPONENTS" "/home/paulus/projects/pkg-leeloo/modules/ui/common-ui/rootfs-data/usr/local/share/leeloo-ui/")
(setenv "LEELOO_TESTDATA" "/home/paulus/testdata/current")
(setenv "CUDA_DIR" "/opt/cuda")
(setenv "MAGICK_OCL_DEVICE" "OFF")

(setenv "ARTEC_BS_SM_GENERATOR"
  "/home/paulus/projects/pkg-leeloo/modules/state-machine/generator/generator.py")
(setenv "ARTEC_BS_SM_TEST_CONFIG_FILE"
  "/home/paulus/projects/pkg-leeloo/modules/config-leo/state-machine/configs/leeloo-statemachine.yaml")
(setenv "ARTEC_BS_SM_CONFIG_FILE"
  "/home/paulus/projects/pkg-leeloo/modules/config-leo/state-machine/configs/leeloo-statemachine.yaml")
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
  "/home/paulus/projects/pkg-leeloo/modules/display-image-channel/leo/leo-image-channel-clib/include/leo-display-image/c-wrapper/publisher.h:/home/paulus/projects/pkg-leeloo/modules/display-image-channel/leo/leo-image-channel-clib/include/leo-display-image/c-wrapper/display-data-config.h")
(setenv "ARTEC_BS_LEELOO_CUBEMAP_VISUALIZER_DBUS_INTROSPECTION" "/home/paulus/projects/pkg-leeloo/modules/cubemap-visualizer/app/dbus-introspection/ICubemapsVisualizerControl.xml")



(provide 'customize-env)
