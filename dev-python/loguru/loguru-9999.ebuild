# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Python logging made (stupidly) simple"
HOMEPAGE="https://github.com/Delgan/loguru"
SRC_URI="https://github.com/Delgan/loguru"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/colorama-0.3.4[${PYTHON_USEDEP}]"
DEPEND="
	doc? (
		dev-python/sphinx[${PYTHON_USEDEP}]
		dev-python/sphinx_rtd_theme[${PYTHON_USEDEP}]
	)
	test? (
		${RDEPEND}
		>=dev-python/pytest-4.5.0[${PYTHON_USEDEP}]
	)
"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
