# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A command-line benchmarking tool"
HOMEPAGE="https://github.com/sharkdp/hyperfine"
SRC_URI="https://github.com/sharkdp/${PN}/archive/v${PV}.tar.gz"

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
	dobin target/release/${PN}
}
