(setq exec-path (append exec-path '("/home/paulus/.cargo/bin" "/opt/cuda/bin")))

(setenv "RUST_SRC_PATH" "/home/paulus/projects/rust/src")
(setenv "ARCH_AARCH64_COMPONENTS_ROOT" "/media/storage/toolchains/current/aarch64-cross")
(setenv "LEELOO_MAIN_QML" "/home/paulus/projects/pkg-leeloo/modules/ui/source/qml/Main.qml")
(setenv "LEELOO_TESTDATA" "/media/fast-storage/testdata")
(setenv "CUDA_DIR" "/opt/cuda")
(setenv "MAGICK_OCL_DEVICE" "OFF")

(provide 'customize-env)
