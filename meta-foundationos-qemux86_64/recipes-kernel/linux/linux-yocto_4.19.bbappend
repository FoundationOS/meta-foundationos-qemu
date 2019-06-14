FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_foundationos-qemux86-64 = "foundationos-qemux86-64"
KBRANCH_foundationos-qemux86-64 = "v4.19/standard/base"
KMACHINE_foundationos-qemux86-64 = "common-pc-64"


SRC_URI += "file://enable_pci.cfg \
            file://enable_acpi.cfg \
            file://enable_largeblkdev.cfg \
            file://enable_sdhci_mmc.cfg \
            file://systemd_support.cfg \
            file://remove_unneeded.cfg \
           "
