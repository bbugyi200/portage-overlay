# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="A usable, customizable commandline client to automate and manage your pocket collection."
HOMEPAGE="https://github.com/arvindch/pockyt"
SRC_URI="https://github.com/arvindch/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/parse"
RDEPEND="${DEPEND}"
