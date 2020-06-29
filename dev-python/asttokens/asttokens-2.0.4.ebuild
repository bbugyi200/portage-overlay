# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} )
inherit distutils-r1

RESTRICT="network-sandbox"

DESCRIPTION="Annotate Python AST trees with source text and token information"
HOMEPAGE="https://github.com/gristlabs/asttokens"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
dev-python/six
"
RDEPEND="${DEPEND}"
BDEPEND=""
