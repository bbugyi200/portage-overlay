# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: This is an experimental project, trying to build a compatibility layer for neovim rpc client working on vim8."
HOMEPAGE="https://github.com/roxma/vim-hug-neovim-rpc"
EGIT_REPO_URI="https://github.com/roxma/vim-hug-neovim-rpc"

LICENSE="MIT"

DEPEND="dev-python/neovim-python-client"
