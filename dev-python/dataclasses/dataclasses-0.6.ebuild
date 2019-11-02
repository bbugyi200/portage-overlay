# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="This is an implementation of PEP 557, Data Classes. It is a backport for Python 3.6."
HOMEPAGE="https://github.com/ericvsmith/dataclasses"
SRC_URI="https://github.com/ericvsmith/${PN}/archive/${PV}.tar.gz"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
