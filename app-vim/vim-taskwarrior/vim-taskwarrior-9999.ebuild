# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: a vim interface for taskwarrior"
HOMEPAGE="https://github.com/blindFS/vim-taskwarrior"
EGIT_REPO_URI="https://github.com/blindFS/vim-taskwarrior"

DEPEND="
app-misc/task
"
