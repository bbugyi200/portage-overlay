# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="The uncompromising Python code formatter"
HOMEPAGE="https://github.com/psf/black#installation-and-usage"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-python/click
dev-python/attrs
dev-python/appdirs
dev-python/toml
dev-python/typed-ast
"
RDEPEND="${DEPEND}"
