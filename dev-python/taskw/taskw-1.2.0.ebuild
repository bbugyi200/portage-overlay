# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="This is a python API for the taskwarrior command line tool."
HOMEPAGE="https://github.com/ralphbean/taskw"
SRC_URI="https://github.com/ralphbean/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-python/six
dev-python/python-dateutil
dev-python/pytz
dev-python/kitchen
"
RDEPEND="${DEPEND}"
