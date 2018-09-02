# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin

DESCRIPTION="vim plugin: Search local vimrc files (".lvimrc") in the tree (root dir up to current dir) and load them."
HOMEPAGE="https://github.com/embear/vim-localvimrc"
SRC_URI="https://github.com/embear/${PN}/archive/v${PV}.tar.gz"
KEYWORDS="~amd64 ~x86"

src_compile() {
	:
}
