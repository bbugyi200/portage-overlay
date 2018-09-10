# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit rpm

_P="${PN}"-201212w-"${PV}"
_PN="${PN}"-201212w

DESCRIPTION="Printer Driver  ESC/P Driver"
HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="http://a1227.g.akamai.net/f/1227/40484/7d/download.ebz.epson.net/dsc/f/01/00/01/87/77/649f8a3c91556eb20bee7281162c185055b9f454/${_P}-1lsb3.2.src.rpm"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"
FILTER_SRC_DIR="${S}"/epson-inkjet-printer-filter-1.0.0
DRIVER_SRC_DIR="${S}/${_P}"

src_configure() {
	cd "${FILTER_SRC_DIR}"

	aclocal  
	libtoolize --force  

	chmod +x configure
	econf --disable-shared LDFLAGS="$LDFLAGS -Wl,--no-as-needed,--enable-debug" --prefix=/opt/"${_PN}"
}

src_compile() {
	cd "${FILTER_SRC_DIR}"
	automake --add-missing
	emake
}

src_install() {
	cd "${DRIVER_SRC_DIR}"
	OPT_DIR=/opt/"${_PN}"
	dodir "${OPT_DIR}"

	cp -a --no-preserve=mode lib64 "${D}"/opt/"${_PN}"
	cp -a --no-preserve=mode resource "${D}"/opt/"${_PN}"
	cp -a --no-preserve=mode watermark "${D}"/opt/"${_PN}"

	PPD_DIR=/usr/share/cups/model/"${_PN}"
	dodir "${PPD_DIR}"
	insinto "${PPD_DIR}"
	for PPD in ppds/*; do
		doins "${PPD}"
	done

	OPT_FILTER_DIR=/opt/"${_PN}"/cups/lib/filter
	dodir "${OPT_FILTER_DIR}"
	insinto "${OPT_FILTER_DIR}"
	doins "${FILTER_SRC_DIR}"/src/epson_inkjet_printer_filter
}
