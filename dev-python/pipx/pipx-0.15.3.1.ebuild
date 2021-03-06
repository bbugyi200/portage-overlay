# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy pypy3 python3_{6,7,8} )
inherit distutils-r1

DESCRIPTION="Execute binaries from Python packages in isolated environments"
HOMEPAGE="https://pipxproject.github.io/pipx/"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/pipxproject/${PN}"
else
	SRC_URI="https://github.com/pipxproject/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~alpha ~amd64 ~amd64-fbsd ~amd64-linux ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-linux"
fi

LICENSE="MIT"
SLOT="0"
IUSE="test"

DEPEND="
	dev-python/setuptools
	dev-python/userpath
	>=dev-python/argcomplete-1.9.4
	<dev-python/argcomplete-2.0
	test? (
		dev-python/flake8[${PYTHON_USEDEP}]
		dev-python/mypy[${PYTHON_USEDEP}]
		dev-python/jinja[${PYTHON_USEDEP}]
		dev-python/mkdocs[${PYTHON_USEDEP}]
	)
"
RDEPEND="${DEPEND}"
