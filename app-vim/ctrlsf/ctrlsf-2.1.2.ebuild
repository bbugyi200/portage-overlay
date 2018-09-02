# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin

DESCRIPTION="vim plugin: An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2"
HOMEPAGE="https://github.com/dyng/ctrlsf.vim"
SRC_URI="https://github.com/dyng/${PN}.vim/archive/v${PV}.tar.gz"
KEYWORDS="~amd64 ~x86"

DEPEND="
sys-apps/ack
sys-apps/the_silver_searcher
"
