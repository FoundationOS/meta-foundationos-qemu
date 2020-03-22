################################################################################
# Generic patches.
################################################################################
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://0001-Defconfig-for-loading-kernel-from-mmc.patch \
    file://0001-FOS-QEMU-MMC-support-in-X86_64-SPL.patch \
    file://0002-FOS-QEMU-Load-uboot-proper-from-bootloader_a-partiti.patch \
    file://0003-FOS-QEMUX86_64-Increase-the-memory-allocatable-size-.patch \
    file://0004-FOS-QEMUX86-64-Defconfig-changes.patch \
"

inherit deploy

do_deploy_append() {
    install -m 644 ${B}/u-boot.bin ${DEPLOYDIR}/u-boot-proper.bin
}

