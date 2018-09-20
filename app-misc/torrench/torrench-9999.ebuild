# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1
inherit git-r3

DESCRIPTION="Command-line torrent search program"
HOME="https://github.com/kryptxy/torrench"
EGIT_REPO_URI="https://github.com/kryptxy/torrench"
