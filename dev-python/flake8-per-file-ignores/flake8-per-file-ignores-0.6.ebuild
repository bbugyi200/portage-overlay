# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="An extension for flake8 that lets you configure (out-of-source) individual error codes to be ignored per file."
HOMEPAGE="https://github.com/snoack/flake8-per-file-ignores"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
>=dev-python/flake8-3.0
dev-python/py-pathmatch
"
RDEPEND="${DEPEND}"
