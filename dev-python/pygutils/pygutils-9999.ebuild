# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="My personal python utility library."
HOMEPAGE="https://github.com/bbugyi200/pygutils"
EGIT_REPO_URI="https://github.com/bbugyi200/pygutils"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}
