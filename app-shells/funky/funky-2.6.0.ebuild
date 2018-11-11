# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="localalias is a light-weight shell wrapper that allows you to create per-directoy command aliases."
HOMEPAGE="https://github.com/bbugyi200/localalias"
SRC_URI="https://github.com/bbugyi200/${PN}/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/pygments"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}
