# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Helps you remember facts (like words/phrases in a foreign language) efficiently"
HOMEPAGE="https://apps.ankiweb.net/"
SRC_URI="https://apps.ankiweb.net/downloads/current/${PN}-${PV}-linux-amd64.tar.bz2 -> ${PN}-${PV}.tar.bz2"

LICENSE="AGPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-libs/wayland
dev-qt/qtwebengine
dev-python/PyQt5
dev-python/beautifulsoup
dev-python/pyaudio
dev-python/requests
dev-python/send2trash
dev-python/decorator
dev-python/markdown
dev-util/desktop-file-utils
"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack "${A}"
	mv "${WORKDIR}"/"${PN}"-"${PV}"-linux-amd64 "${WORKDIR}"/"${PN}"-"${PV}"
}

src_prepare() {
	eapply "${FILESDIR}"/makefile.patch
	eapply_user
}

src_install() {
	cd "${PN}"-"${PV}"-linux-amd64
	emake DESTDIR="${D}" PREFIX=/usr install
}
