# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: Automated tag file generation and syntax highlighting of tags in Vim"
HOME="https://github.com/xolox/vim-easytags"
EGIT_REPO_URI="https://github.com/xolox/vim-easytags"

DEPEND="
dev-util/ctags
app-vim/vim-misc
"
