FILESEXTRAPATHS_prepend := "${THISDIR}/connman:"

SRC_URI += " \
    file://0001-connman.service.in-don-t-start-if-nfs-boot.patch \
    file://main.conf \
"

do_install_append() {
	install -d ${D}${sysconfdir}/connman/
	install -m 0644 ${WORKDIR}/main.conf ${D}${sysconfdir}/connman/
}
