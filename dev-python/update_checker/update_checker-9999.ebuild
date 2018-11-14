# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="A python module that will check for package updates."
HOMEPAGE="https://github.com/bboe/update_checker"
EGIT_REPO_URI="https://github.com/bboe/update_checker"

LICENSE="MIT"
SLOT="0"

DEPEND="
dev-python/requests
"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --root="${D}"
}
