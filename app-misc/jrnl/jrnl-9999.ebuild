# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

PYTHON_COMPAT=( python3_{4,5,6} )

inherit git-2 distutils-r1

DESCRIPTION="A simple command line journal application that stores your journal in a plain text file."
HOMEPAGE="http://jrnl.sh"
SRC_URI=""
EGIT_REPO_URI="https://github.com/maebert/jrnl.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="crypt"

DEPEND="
	>=dev-python/python-dateutil-2.2[${PYTHON_USEDEP}]
	>=dev-python/six-1.6.1[${PYTHON_USEDEP}]
	>=dev-python/keyrings_alt-3.1.1[${PYTHON_USEDEP}]
	>=dev-python/keyring-3.3[${PYTHON_USEDEP}]
	>=dev-python/parsedatetime-1.4[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-1.1.2[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/pyyaml
	dev-python/pyxdg
	dev-python/passlib
	dev-python/asteval
	crypt? (
		>=dev-python/pycrypto-2.6[${PYTHON_USEDEP}]
	)
"
RDEPEND="${DEPEND}"
