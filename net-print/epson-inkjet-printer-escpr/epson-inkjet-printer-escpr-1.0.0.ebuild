# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Printer Driver  ESC/P Driver"
HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="http://a1227.g.akamai.net/f/1227/40484/7d/download.ebz.epson.net/dsc/f/01/00/01/87/77/c86f971d4d7efabd03f885ca8551bc39c14d6a75/epson-inkjet-printer-201212w_1.0.0-1lsb3.2_amd64.deb"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
        unpack ${A}
        unpack ./data.tar.gz
}

src_install() {
	emake install
}
