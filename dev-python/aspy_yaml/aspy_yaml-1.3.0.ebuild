# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Some extensions to pyyaml."
HOMEPAGE="https://github.com/asottile/aspy.yaml"
SRC_URI="https://github.com/asottile/aspy.yaml/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/pyyaml"
RDEPEND="${DEPEND}"
BDEPEND=""

MY_PN="${PN/_/.}"
S="${WORKDIR}/${MY_PN}-${PV}"
