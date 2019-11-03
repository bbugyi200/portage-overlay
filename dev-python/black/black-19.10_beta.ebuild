# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )

MY_PV="${PV/_beta/b0}"

DESCRIPTION="The uncompromising Python code formatter https://black.readthedocs.io/en/stable/"
HOMEPAGE="https://github.com/psf/black"
SRC_URI="https://github.com/psf/${PN}/archive/${MY_PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/appdirs
	>=dev-python/attrs-18.1.0
	>=dev-python/click-6.5
	|| ( >=dev-lang/python-3.7.0 dev-python/dataclasses )
	>=dev-python/mypy_extensions-0.4.3
	>=dev-python/pathspec-0.6
	dev-python/regex
	>=dev-python/toml-0.9.4
	>=dev-python/typed-ast-1.4.0
	>=dev-python/typing-extensions-3.7.4
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}-${MY_PV}"


src_install() {
	cd "${S}" || die "Directory does not exist."
    python setup.py install --prefix=/usr --root="${D}"
}
