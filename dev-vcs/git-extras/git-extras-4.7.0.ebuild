# Copyright 2017 Jan Chren (rindeal)
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit rindeal

GH_RN="github:tj"

# EXPORT_FUNCTIONS: src_unpack
inherit git-hosting
# functions: dobashcomp
inherit bash-completion-r1

DESCRIPTION="GIT utilities -- repo summary, repl, changelog population and more"
LICENSE="GPL-2"

SLOT="0"

KEYWORDS="~amd64 ~arm ~arm64"
IUSE_A=( doc )

CDEPEND_A=()
DEPEND_A=( "${CDEPEND_A[@]}" )
RDEPEND_A=( "${CDEPEND_A[@]}" )

REQUIRED_USE_A=(  )
RESTRICT+=""

inherit arrays

src_compile() { :; }

src_install() {
	emake PREFIX="${D}" install
	doman man/*.1
}
