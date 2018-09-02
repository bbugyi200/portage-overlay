# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin

DESCRIPTION="vim plugin: Happy Haskell programming on Vim, powered by ghc-mod"
HOMEPAGE="https://github.com/eagletmt/ghcmod-vim"
SRC_URI="https://github.com/eagletmt/${PN}/archive/v${PV}.tar.gz"

KEYWORDS="~amd64 ~x86"

DEPEND="
app-vim/vimproc
"
