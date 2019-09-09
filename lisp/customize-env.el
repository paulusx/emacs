(setq exec-path (append exec-path '("/home/paulus/.cargo/bin" "/opt/cuda/bin")))

(setenv "RUST_SRC_PATH" "/home/paulus/projects/rust/src")
(setenv "ARCH_AARCH64_COMPONENTS_ROOT" "/media/storage/toolchains/current/aarch64-cross")
(setenv "LEELOO_MAIN_QML" "/home/paulus/projects/pkg-leeloo/modules/ui/source/qml/Main.qml")
(setenv "LEELOO_QML_COMPONENTS" "/home/paulus/projects/pkg-leeloo/modules/ui/common-ui/rootfs-data/etc/artec/leeloo/ui")
(setenv "LEELOO_TESTDATA" "/media/fast-storage/testdata")
(setenv "CUDA_DIR" "/opt/cuda")
(setenv "MAGICK_OCL_DEVICE" "OFF")


(setenv "ARTEC_BS_SM_GENERATOR"
  "/home/paulus/projects/pkg-leeloo/modules/sm/generator/generator.py")
(setenv "ARTEC_BS_SM_TEST_CONFIG_FILE"
  "/home/paulus/projects/pkg-leeloo/modules/sm/generator/configs/test-statemachine.yaml")
(setenv "ARTEC_BS_SM_CONFIG_FILE"
  "/home/paulus/projects/pkg-leeloo/modules/sm/generator/configs/leeloo-statemachine.yaml")
(setenv "ARTEC_BS_PROJECT_MANAGER_DBUS_INTROSPECTIONS_DIR"
  "/home/paulus/projects/pkg-leeloo/modules/project-manager/xml/")
(setenv "ARTEC_BS_SM_DBUS_INTROSPECTIONS_DIR"
  "/home/paulus/projects/pkg-leeloo/modules/sm/xml/")

(provide 'customize-env)
