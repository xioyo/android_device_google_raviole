rm -rf device/google/raviole
rm -rf device/google/gs101
rm -rf device/google/gs-common
rm -rf vendor/google/oriole
rm -rf vendor/google/raven
rm -rf device/google/raviole-kernels/lineage
rm -rf packages/apps/PixelParts

git clone --depth=1 https://github.com/xioyo/android_device_google_raviole.git -b elixir16 device/google/raviole
git clone --depth=1 https://github.com/xioyo/android_device_google_gs101.git -b sixteen device/google/gs101
git clone --depth=1 https://github.com/LineageOS/android_device_google_gs-common.git -b lineage-23.0 device/google/gs-common
git clone --depth=1 https://github.com/xioyo/proprietary_vendor_google_oriole.git -b lineage-23.0 vendor/google/oriole
git clone --depth=1 https://github.com/xioyo/proprietary_vendor_google_raven.git -b lineage-23.0 vendor/google/raven
git clone --depth=1 https://git.evolution-x.org/Evolution-X-Tensor/device_google_raviole-kernels_evolution.git -b bka device/google/raviole-kernels/lineage
git clone --depth=1 https://github.com/Evolution-X-Devices/packages_apps_PixelParts.git -b bka packages/apps/PixelParts
