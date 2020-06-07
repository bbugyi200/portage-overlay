# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Executes commands in response to file modifications"
HOMEPAGE="https://github.com/watchexec/watchexec"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz"

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
	dobin target/release/${PN}
}
