# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Live Markdown previews for your favorite editor."
HOME="https://github.com/shime/livedown"
SRC_URI="https://github.com/shime/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
net-libs/nodejs
"

RDEPEND="${DEPEND}"

src_install() {
	local npmdir=/usr/lib64/node_modules
	dodir "$npmdir"
	npm install -g --prefix "${D}/usr" "${PN}"@"${PV}"
}
