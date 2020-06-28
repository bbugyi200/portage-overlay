# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )
inherit git-r3

RESTRICT="network-sandbox"

DESCRIPTION="Scalene: a high-performance, high-precision CPU and memory profiler for Python"
HOMEPAGE="https://github.com/emeryberger/scalene"
EGIT_REPO_URI="https://github.com/emeryberger/scalene"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-python/numpy
"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}" --optimize=1
}
