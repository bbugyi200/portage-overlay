# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit ruby-fakegem

DESCRIPTION="Create and manage tmux sessions easily."
HOMEPAGE="https://github.com/tmuxinator/tmuxinator"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""

ruby_add_rdepend ">=dev-ruby/erubis"
ruby_add_rdepend ">=dev-ruby/thor-0.15"
ruby_add_rdepend ">=dev-ruby/xdg-2.2.3"
