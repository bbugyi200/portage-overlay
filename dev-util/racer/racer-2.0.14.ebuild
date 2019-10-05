# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Rust Code Completion utility"
HOMEPAGE="https://github.com/racer-rust/racer"
SRC_URI="https://github.com/racer-rust/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_compile() {
	cargo build --release || die
}

src_install() {
	dobin target/release/racer
}

pkg_postinst() {
	elog "You most probably should fetch rust sources for best expirience."
	elog "Racer will look for sources in path pointed by RUST_SRC_PATH"
	elog "environment variable. You can use"
	elog "% export RUST_SRC_PATH=<path to>/rust/src."
	elog "Use vim-racer or emacs-racer for the editos support"
	elog
}
