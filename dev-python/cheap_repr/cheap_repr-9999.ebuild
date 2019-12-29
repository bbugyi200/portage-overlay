# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Better version of repr/reprlib for short, cheap string representations in Python"
HOMEPAGE="https://github.com/alexmojaki/cheap_repr"
EGIT_REPO_URI="https://github.com/alexmojaki/cheap_repr"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
