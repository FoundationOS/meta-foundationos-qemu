################################################################################
# Generic patches.
################################################################################
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://0001-Defconfig-for-loading-kernel-from-mmc.patch \
    file://0001-Defconfig-for-FoundationOS-x86-64-Machine.patch \
    file://disable_debugging.patch \
    file://disable_lastlba_check.patch \
"
