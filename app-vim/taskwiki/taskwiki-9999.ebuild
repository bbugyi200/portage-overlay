# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: Proper project management in vim. Standing on the shoulders of vimwiki and Taskwarrior"
HOMEPAGE="https://github.com/tbabej/taskwiki"
EGIT_REPO_URI="https://github.com/tbabej/taskwiki"

DEPEND="
app-vim/vimwiki
app-misc/task
dev-python/tasklib
"
