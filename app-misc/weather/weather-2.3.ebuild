# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="This command-line utility is intended to provide quick access to current weather conditions and forecasts."
HOMEPAGE="http://fungi.yuggoth.org/weather/"
SRC_URI="http://fungi.yuggoth.org/weather/src/${P}.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dobin weather-report
}
