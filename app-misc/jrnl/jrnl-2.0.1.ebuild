# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )

DESCRIPTION="Collect your thoughts and notes without leaving the command line."
HOMEPAGE="https://github.com/jrnl-org/jrnl"
SRC_URI="https://github.com/jrnl-org/${PN}/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="crypt"

DEPEND="
	>=dev-python/asteval-0.9.8
	>=dev-python/keyring-7.3
	>=dev-python/keyrings_alt-3.1.1
	>=dev-python/parsedatetime-1.5
	>=dev-python/passlib-1.6.2
	>=dev-python/python-dateutil-2.2
	>=dev-python/pytz-2015.7
	>=dev-python/pyxdg-0.25
	>=dev-python/pyyaml-3.11
	>=dev-python/six-1.10.0
	>=dev-python/tzlocal-1.2.0
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
