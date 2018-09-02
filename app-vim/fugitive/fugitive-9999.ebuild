# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: A Git wrapper so awesome, it should be illegal"
HOME="https://github.com/tpope/vim-fugitive"
EGIT_REPO_URI="https://github.com/tpope/vim-fugitive"

DEPEND="
dev-vcs/git
"
