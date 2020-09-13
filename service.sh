#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

setenforce 0
resetprop sys.usb.configfs 1
resetprop sys.usb.config diag,serial_cdev,rmnet_gsi,adb
