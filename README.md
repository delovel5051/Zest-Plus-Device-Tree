![LineageOS](https://lineageos.org/images/logo-2.png)
# LineageOS 14.1 device tree for Acer Liquid Zest Plus

This repository contains fully working device tree that allows to build firmware for Acer Liquid Zest Plus phone.

Forked from [android_device_ark_benefit_m7](https://github.com/olegsvs/android_device_ark_benefit_m7) by nE0sIghT.

## Status
### Works
 * AOSP init
 * Bluetooth
 * GPS
 * Hardware codecs
 * Mobile/4G
 * SD Card
 * Wifi AP

### Works with issues
 * FM Radio: route audio to speaker does not works.
 * Live Display: slow.

### Untested
 * Second SIM
 * Cameras

## How to build

 * Initialize repo
   ```
    repo init -u git://github.com/LineageOS/android.git -b cm-14.1
    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/nE0sIghT/android_local_manifests/cm-14.1/02-acer-t08.xml
    repo sync
   ```
 * Extract proprietary blobs
   ```
    device/acer/t08/extract-files.sh
   ```
 * Apply AOSP patches
   ```
    device/acer/t08/patches/apply-patch.sh
   ```
 * Compile
   ```
    source build/envsetup.sh
    lunch lineage_t08-userdebug
    brunch x5pro
   ```

## TODO
 * Full enforcing SELinux support.
 * Move patches to device tree

## Thanks to:
 * [olegsvs](https://github.com/olegsvs)
 * [DeckerSU](https://github.com/DeckerSU)
 * [SeriniTY320](https://github.com/SeriniTY320)
