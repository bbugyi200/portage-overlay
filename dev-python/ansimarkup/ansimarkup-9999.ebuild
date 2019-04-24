# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Produce colored terminal text with an xml-like markup"
HOMEPAGE="https://github.com/gvalkov/python-ansimarkup"
EGIT_REPO_URI="https://github.com/gvalkov/python-ansimarkup"

LICENSE="MIT"
SLOT="0"

DEPEND="
dev-python/colorama
"

RDEPEND="
${DEPEND}
"

src_install() {
	cd "${P}"
	python setup.py install --root="${D}"
}
