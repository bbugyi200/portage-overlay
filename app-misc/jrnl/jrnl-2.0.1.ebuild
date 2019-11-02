# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Collect your thoughts and notes without leaving the command line."
HOMEPAGE="https://github.com/jrnl-org/jrnl"
SRC_URI="https://github.com/jrnl-org/jrnl/archive/v2.0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=dev-python/python-dateutil-2.2
	>=dev-python/six-1.6.1
	>=dev-python/keyrings_alt-3.1.1
	>=dev-python/keyring-3.3
	>=dev-python/parsedatetime-1.4
	>=dev-python/tzlocal-1.1.2
	dev-python/pytz
	dev-python/pyyaml
	dev-python/pyxdg
	dev-python/passlib
	dev-python/asteval
	crypt? (
		>=dev-python/pycrypto-2.6
	)
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}
