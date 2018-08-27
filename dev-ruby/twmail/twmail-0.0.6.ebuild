# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit ruby-fakegem

DESCRIPTION="twmail allows you to mail new tasks to your TaskWarrior inbox"
HOMEPAGE="https://github.com/nerab/TaskWarriorMail"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

ruby_add_rdepend ">=dev-ruby/mail-2.6.5"
