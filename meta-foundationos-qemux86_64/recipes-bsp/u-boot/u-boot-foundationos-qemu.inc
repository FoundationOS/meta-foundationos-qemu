################################################################################
# Generic patches.
################################################################################
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://0001-Defconfig-for-loading-kernel-from-mmc.patch \
    file://disable_lastlba_check.patch \
    file://0001-FOS-QEMU-MMC-support-in-X86_64-SPL.patch \
    file://0001-FOS-QEMU-Load-uboot-proper-from-bootloader_a-partiti.patch\
    file://0001-FOS-QEMU-Set-the-uboot-proper-text-address-to-0x2000.patch\
"

inherit deploy

do_deploy_append() {
    install -m 644 ${B}/u-boot.img ${DEPLOYDIR}/u-boot.img
}

