# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy pypy3 python{2_7,3_{6,7}} )
inherit git-r3

DESCRIPTION="Execute binaries from Python packages in isolated environments"
HOMEPAGE="https://pipxproject.github.io/pipx/"
EGIT_REPO_URI="https://github.com/pipxproject/${PN}"

LICENSE="MIT"
SLOT="0"

DEPEND="
	dev-python/setuptools
	dev-python/userpath
"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}
