# Clone common device tree
git clone https://github.com/Arijit78/device_xiaomi_sm8250-common.git -b 11 device/xiaomi/sm8250-common

# Clone vendor tree
git clone https://github.com/Arijit78/vendor_xiaomi_alioth.git -b 11 vendor/xiaomi/alioth

# Clone common vendor tree
git clone https://github.com/Arijit78/vendor_xiaomi_sm8250-common.git -b 11 vendor/xiaomi/sm8250-common

# Clone kernel tree
git clone --depth=1 https://github.com/Arijit78/kernel_xiaomi_sm8250.git -b fdk kernel/xiaomi/alioth

cd kernel/xiaomi/alioth
git submodule init
git submodule update
cd ../../../

# Clone hardware_xiaomi
rm -rf hardware/xiaomi && git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-18.1 hardware/xiaomi

# Clone clang
git clone --depth=1 https://gitlab.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-r547379.git prebuilts/clang/host/linux-x86/clang-r547379
