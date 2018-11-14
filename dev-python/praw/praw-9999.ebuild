# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="A python package that allows for simple access to Reddit's API"
HOMEPAGE="https://github.com/praw-dev/praw"
EGIT_REPO_URI="https://github.com/praw-dev/praw"

LICENSE="MIT"
SLOT="0"

DEPEND="
dev-python/pytest-runner
"

RDEPEND="
${DEPEND}
dev-python/prawcore
dev-python/update_checker
"

src_install() {
	cd "${P}"
	python setup.py install --root="${D}"
}
