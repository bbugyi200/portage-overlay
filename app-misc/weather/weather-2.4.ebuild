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

src_prepare() {
	default 
	sed -i 's|env python|env python2|' *

	# set up correlation sets
	sed -i 's| else: default_setpath = ".:~/.weather|&:/usr/share/weather-util|' weather.py
}

src_install() {
	insinto /usr/share/weather-util
	doins airports
	doins places
	doins stations
	doins zctas
	doins zones

	_python_path="$(python2 -c "import sys ; print [p for p in sys.path if p.startswith('/usr/lib64/python2.')][0]")/site-packages"
	insinto /"$_python_path"
	doins weather.py
	
	insinto /etc
	doins weatherrc

	doman weather.1
	doman weatherrc.5

	newbin weather weather-report
}
