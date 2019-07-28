# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Cross-platform tool for adding locations to the user PATH, no elevated privileges required!"
HOMEPAGE="https://github.com/ofek/userpath"
EGIT_REPO_URI="https://github.com/ofek/userpath"

LICENSE="MIT"
SLOT="0"

DEPEND="
	dev-python/click
	dev-python/distro
"
RDEPEND="${DEPEND}"
