# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit vim-plugin
inherit git-r3

DESCRIPTION="vim plugin: Vim plugin that use clang for completing C/C++ code."
HOMEPAGE="https://github.com/Rip-Rip/clang_complete"
EGIT_REPO_URI="https://github.com/Rip-Rip/clang_complete"

DEPEND="
sys-devel/clang
"

src_compile() {
	:
}
