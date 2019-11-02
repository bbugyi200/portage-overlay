# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Utility library for gitignore style pattern matching of file paths."
HOMEPAGE="https://github.com/cpburnz/python-path-specification"
EGIT_REPO_URI="https://github.com/cpburnz/python-path-specification"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	cd "${P}"
    python setup.py install --prefix=/usr --root="${D}"
}
