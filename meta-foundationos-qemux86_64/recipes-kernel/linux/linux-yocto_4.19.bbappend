FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_foundationos-qemux86-64 = "foundationos-qemux86-64"

KBRANCH_foundationos-qemux86-64  = "v4.18/standard/base"
KBUILD_DEFCONFIG_foundationos-qemux86-64 = "x86_64_defconfig"

KERNEL_FEATURES_append_foundationos-qemux86-64 += " cfg/smp.scc"

SRC_URI += "file://foundationos-qemu.cfg\
            file://foundationos-qemu-standard.scc \
            file://foundationos-qemu-user-config.cfg \
            file://foundationos-qemu-user-features.scc \
            file://enable_pci.cfg \
            file://enable_acpi.cfg \
            file://enable_largeblkdev.cfg \
            file://enable_sdhci_mmc.cfg \
            file://systemd_support.cfg \
            file://remove_unneeded.cfg \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_foundationos-qemux86 ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_foundationos-qemux86 ?= "${AUTOREV}"

#Remove the following line once AUTOREV is locked to a certain SRCREV
KERNEL_VERSION_SANITY_SKIP = "1"
