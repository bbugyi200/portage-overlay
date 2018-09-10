# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit rpm

DESCRIPTION="Printer Driver  ESC/P Driver"
HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="http://a1227.g.akamai.net/f/1227/40484/7d/download.ebz.epson.net/dsc/f/01/00/01/87/77/649f8a3c91556eb20bee7281162c185055b9f454/epson-inkjet-printer-201212w-1.0.0-1lsb3.2.src.rpm"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

SRC_DIR="epson-inkjet-printer-filter-1.0.0"
S="${WORKDIR}/${SRC_DIR}"

src_configure() {
	aclocal  
	libtoolize --force  
	autoheader  
	autoconf  

	chmod +x configure
	econf 

	# Makefile calls ls to generate a file list which is included in Makefile.am
	# Set the collation to C to avoid automake being called automatically
	unset LC_ALL
	export LC_COLLATE=C
}

src_compile() {
	automake --add-missing
	emake
}