# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Check if a version of a PyPI package is outdated"
HOMEPAGE="https://github.com/alexmojaki/outdated"
EGIT_REPO_URI="https://github.com/alexmojaki/outdated"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
dev-python/requests
dev-python/littleutils
"
RDEPEND="${DEPEND}"
BDEPEND=""
