# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Common humanization utilities for Flask applications"
HOMEPAGE="https://github.com/vitalk/flask-humanize"
SRC_URI="https://github.com/vitalk/flask-humanize/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
dev-python/flask
dev-python/humanize
"
RDEPEND="${DEPEND}"
BDEPEND=""