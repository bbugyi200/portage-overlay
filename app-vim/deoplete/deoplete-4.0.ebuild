# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin

DESCRIPTION="vim plugin: "
HOMEPAGE="https://github.com/Shougo/deoplete.nvim"
SRC_URI="https://github.com/Shougo/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DEPEND="
app-vim/neoinclude
app-vim/nvim-yarp
app-vim/vim-hug-neovim-rpc
dev-python/neovim-python-client
"
