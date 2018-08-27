# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="A Python command line client for tldr."
HOMEPAGE="https://github.com/tldr-pages/tldr-python-client"
SRC_URI="https://github.com/tldr-pages/tldr-python-client/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
>=dev-python/click-5.0
>=dev-python/pyyaml-3.11
"
RDEPEND="${DEPEND}"
