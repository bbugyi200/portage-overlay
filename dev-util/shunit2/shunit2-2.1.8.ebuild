# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Unit-test framework for Bourne-based shell scripts"
HOMEPAGE="https://github.com/kward/shunit2"
SRC_URI="https://github.com/kward/${PN}/archive/v${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

src_install() {
	dobin shunit2

	# For backwards compat to <=2.1.5
	dosym /usr/bin/shunit2 /usr/share/shunit2/shunit2

	dodoc -r examples
	dodoc doc/*.txt
}
