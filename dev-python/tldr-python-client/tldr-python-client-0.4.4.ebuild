# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A Python command line client for tldr."
HOMEPAGE="https://github.com/tldr-pages/tldr-python-client"
SRC_URI="https://github.com/tldr-pages/tldr-python-client/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
>=dev-python/click-5.0
>=dev-python/pyyaml-3.11
"
RDEPEND="${DEPEND}"

src_prepare() {
	export SETUPTOOLS_SCM_PRETEND_VERSION="${PV}"
	default
}

src_compile() {
	cd tldr-python-client-"${PV}"
	python setup.py build
}

src_install() {
	cd tldr-python-client-"${PV}"
	python setup.py install -O1 --prefix=/usr --root="${D}"
}
