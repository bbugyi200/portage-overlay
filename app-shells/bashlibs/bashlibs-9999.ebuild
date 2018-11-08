# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3
HOME="https://github.com/bbugyi200/bashlibs"
EGIT_REPO_URI="https://github.com/bbugyi200/bashlibs"

LICENSE="MIT"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	:
}

src_install() {
	emake DESTDIR="${D}" install || die "emake failed"
}
