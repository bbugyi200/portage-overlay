# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
inherit distutils-r1

DESCRIPTION="A plugin for Flake8 finding likely bugs and design problems in your program. Contains warnings that don't belong in pyflakes and pycodestyle."
HOMEPAGE="https://github.com/PyCQA/flake8-bugbear"
SRC_URI="https://github.com/PyCQA/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
dev-python/flake8
dev-python/attrs
"
RDEPEND="${DEPEND}"
BDEPEND=""
