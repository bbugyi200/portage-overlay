# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Helps you remember facts (like words/phrases in a foreign language) efficiently"
HOMEPAGE="https://apps.ankiweb.net/"
SRC_URI="https://apps.ankiweb.net/downloads/current/${PN}-${PV}-amd64.tar.bz2"

LICENSE="AGPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-libs/expat
dev-libs/glib
dev-db/sqlite
dev-libs/openssl
"
RDEPEND="${DEPEND}"

src_install() {
	cd "${S}"/"${P}"

	doman anki.1

	insinto usr/share/pixmaps
	doins anki.png

	insinto opt/"${PN}"
	doins bin/*

	fperms +x /opt/"${PN}"/anki
	dosym /opt/"${PN}"/anki /usr/local/bin/anki
}
