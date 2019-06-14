################################################################################
# Generic patches.
################################################################################
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://0001-Defconfig-for-loading-kernel-from-mmc.patch \
    file://disable_lastlba_check.patch \
    file://disable_debugging.patch\
"
