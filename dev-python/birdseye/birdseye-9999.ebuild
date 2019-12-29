# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="Graphical Python debugger which lets you easily view the values of all evaluated expressions"
HOMEPAGE="https://github.com/alexmojaki/birdseye"
EGIT_REPO_URI="https://github.com/alexmojaki/birdseye"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
dev-python/flask
dev-python/sqlalchemy
dev-python/future

dev-python/flask-humanize
dev-python/asttokens
>=dev-python/littleutils-0.2
dev-python/cheap_repr
dev-python/outdated
dev-python/cached-property
"
RDEPEND="${DEPEND}"
BDEPEND=""
