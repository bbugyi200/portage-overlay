# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="bugwarrior is a command line utility for updating your local taskwarrior database from your forge issue trackers."
HOMEPAGE="https://github.com/ralphbean/bugwarrior"
SRC_URI="https://github.com/ralphbean/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-python/requests
>=dev-python/taskw-0.8
dev-python/python-dateutil
dev-python/pytz
>=dev-python/six-1.9.9
dev-python/jinja
>=dev-python/dogpile-cache-0.5.3
>=dev-python/lockfile-0.9.1
dev-python/click
!=dev-python/future-0.16.0
"
RDEPEND="${DEPEND}"
