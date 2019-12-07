# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="PEP 567 Backport"
HOMEPAGE="https://github.com/MagicStack/contextvars"
SRC_URI="https://github.com/MagicStack/${PN}/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
${DEPEND}
>=dev-python/immutables-0.9
"
BDEPEND=""
