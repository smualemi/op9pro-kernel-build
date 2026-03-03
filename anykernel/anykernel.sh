# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# ─────────────────────────────────────────────────────────────
# OnePlus 9 Pro (lemonadep) — Stock Equivalent Kernel
# Platform: SM8350 / Lahaina
# ─────────────────────────────────────────────────────────────

## AnyKernel setup
# begin properties
properties() { '
kernel.string=StockEquiv Kernel for OnePlus 9 Pro
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=lemonadep
device.name2=OnePlus9Pro
device.name3=LE2120
device.name4=LE2125
device.name5=LE2123
supported.versions=14
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see:
# https://github.com/osm0sis/AnyKernel3/blob/master/tools/ak3-core.sh
. tools/ak3-core.sh;

## AnyKernel install
# The OP9 Pro uses boot image header v3 (GKI-style).
# We flash only the kernel image (no ramdisk repacking needed).
dump_boot;

write_boot;
## end install
