# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Python logging made (stupidly) simple"
HOMEPAGE="https://github.com/Delgan/loguru"
EGIT_REPO_URI="https://github.com/Delgan/loguru"

LICENSE="MIT"
SLOT="0"

DEPEND="
dev-python/aiocontextvars
dev-python/ansimarkup
dev-python/colorama
"

RDEPEND="
${DEPEND}
"

src_install() {
	cd "${P}"
	python setup.py install --root="${D}"
}
