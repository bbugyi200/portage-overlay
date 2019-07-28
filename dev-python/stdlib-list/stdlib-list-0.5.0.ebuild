# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="A list of Python Standard Libraries (2.6-7, 3.2-7)."
HOMEPAGE="https://github.com/jackmaney/python-stdlib-list"
SRC_URI="https://github.com/jackmaney/python-${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
    cd python-"${P}"
	python setup.py install --prefix=/usr --root="${D}"
}
