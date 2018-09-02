# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: Yet Another Remote Plugin Framework for Neovim"
HOMEPAGE="https://github.com/roxma/nvim-yarp"
EGIT_REPO_URI="https://github.com/roxma/nvim-yarp"

LICENSE="MIT"

DEPEND="
app-vim/vim-hug-neovim-rpc
dev-python/neovim-python-client
"
