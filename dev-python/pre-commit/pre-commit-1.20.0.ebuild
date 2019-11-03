# Copyright 1999-2019 Gentoo Authors Andreas Billmeier b (at) edevau.net
# Distributed under the terms of the GNU General Public License v3.0

EAPI="7"

PYTHON_COMPAT=( python3_{5,6,7} )

inherit distutils-r1

MY_PN=${PN//-/_}
DESCRIPTION="A framework for managing and maintaining multi-language pre-commit hooks."
HOMEPAGE="https://github.com/pre-commit/pre-commit https://pypi.org/project/pre-commit/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_PN}-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND=""
DEPEND="${REDEPEND}
	dev-python/aspy_yaml
	>=dev-python/cfgv-2.0.0
	>=dev-python/identify-1.0.0
	>=dev-python/nodeenv-0.11.1
	dev-python/pyyaml
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six
	dev-python/toml
	>=dev-python/virtualenv-15.2.0
	|| ( >=dev-lang/python-3.2.0 dev-python/futures )
	|| ( >=dev-lang/python-3.8.0 dev-python/importlib_metadata )
	|| ( >=dev-lang/python-3.7.0 dev-python/importlib_resources )
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

S="${WORKDIR}/${MY_PN}-${PV}"

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}
