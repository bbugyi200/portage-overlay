# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby21 ruby22 ruby23 ruby24"
inherit ruby-fakegem

DESCRIPTION="GitHub Issues on the command line. Use your $EDITOR, not your browser."
HOMEPAGE="https://github.com/stephencelis/ghi"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

ruby_add_rdepend "dev-ruby/pygments_rb"
