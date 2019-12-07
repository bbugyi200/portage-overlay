# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Python logging made (stupidly) simple"
HOMEPAGE="https://github.com/Delgan/loguru"
SRC_URI="https://github.com/Delgan/loguru"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="doc test"

RDEPEND=">=dev-python/colorama-0.3.4"
DEPEND="
	doc? (
		dev-python/sphinx
		dev-python/sphinx_rtd_theme
	)
	test? (
		${RDEPEND}
		>=dev-python/pytest-4.5.0
	)
"
BDEPEND="dev-python/setuptools"

src_install() {
	cd "${P}"
    python setup.py install --prefix=/usr --root="${D}"
}
