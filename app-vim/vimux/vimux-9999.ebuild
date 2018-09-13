# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: "
HOME="https://github.com/benmills/vimux"
EGIT_REPO_URI="https://github.com/benmills/vimux"

DEPEND="
app-misc/tmux
"
