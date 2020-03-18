FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_foundationos-qemux86-64 = "foundationos-qemux86-64"

KBRANCH_foundationos-qemux86-64 = "v4.19/standard/tiny/base"
KMACHINE_foundationos-qemux86-64 = "intel-x86-64"
LINUX_KERNEL_TYPE="tiny"

SRC_URI += "file://enable_pci.cfg \
            file://enable_acpi.cfg \
            file://enable_largeblkdev.cfg \
            file://enable_sdhci_mmc.cfg \
            file://remove_unneeded.cfg \
            file://0001-Disable-lastlba-check.patch \
           "
