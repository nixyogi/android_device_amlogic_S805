#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
#mkdir -p /dev/block/platform/aml_sdhc.0/by-name/
#busybox mount -o bind /dev/block/platformaml_sdhc.0/11230000.msdc0/by-name/ /dev/block/platform/aml_sdhc.0/by-name/ 
