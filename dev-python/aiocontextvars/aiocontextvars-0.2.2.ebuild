# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )

DESCRIPTION="Asyncio support for PEP-567 contextvars backport."
HOMEPAGE="https://github.com/fantix/aiocontextvars"
SRC_URI="https://github.com/fantix/${PN}/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
${DEPEND}
|| ( >=dev-lang/python-3.7.0 =dev-python/contextvars-2.4 )
"
BDEPEND=""

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}
