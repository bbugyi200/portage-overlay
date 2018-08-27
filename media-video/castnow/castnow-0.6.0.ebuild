# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Castnow is a command-line utility that can be used to play back media files on your Chromecast device."
HOMEPAGE="https://github.com/xat/castnow"
EGIT_REPO_URI="git://github.com/xat/castnow.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="net-libs/nodejs"
RDEPEND="${DEPEND}"

src_install() {
	cd "${PN}"
	mkdir -p "${D}"/usr
	npm install --user root -g --prefix="${D}/usr"
	cd "${D}"/usr/lib/node_modules
	rm castnow
}
