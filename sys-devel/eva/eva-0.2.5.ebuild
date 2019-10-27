# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="a calculator REPL, similar to bc(1)"
HOMEPAGE="https://github.com/NerdyPepper/eva"
SRC_URI="https://github.com/NerdyPepper/${PN}/archive/v${PV}.tar.gz"

RESTRICT="network-sandbox"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/cargo"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	cargo build --release
}

src_install() {
	dobin target/release/eva
}
