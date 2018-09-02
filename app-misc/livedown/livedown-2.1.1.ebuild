# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit npm

DESCRIPTION="Live Markdown previews for your favorite editor."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	npm_src_install
}
