FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "\
    file://90-qemu.rules \
"

do_install_append() {
    install -d ${D}${sysconfdir}/udev/rules.d/
    install -m 0644 ${WORKDIR}/*.rules ${D}${sysconfdir}/udev/rules.d/
}
