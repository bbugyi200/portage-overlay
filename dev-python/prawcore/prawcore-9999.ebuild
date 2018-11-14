# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Low-level communication layer for PRAW 4+."
HOMEPAGE="https://github.com/praw-dev/prawcore"
EGIT_REPO_URI="https://github.com/praw-dev/prawcore"

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
