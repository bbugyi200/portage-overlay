# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Preventing the accidental deletion of important files"
HOMEPAGE="https://github.com/kaelzhang/shell-safe-rm"
SRC_URI="https://github.com/kaelzhang/${PN}/archive/${PV}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dodoc Changes COPYING INSTALL README
	newbin rm.sh safe-rm
}

