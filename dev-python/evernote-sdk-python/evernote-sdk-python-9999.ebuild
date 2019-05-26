# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Evernote SDK for Python http://dev.evernote.com"
HOMEPAGE="https://github.com/evernote/evernote-sdk-python"
EGIT_REPO_URI="https://github.com/evernote/evernote-sdk-python"

LICENSE="MIT"
SLOT="0"

DEPEND="
dev-python/thrift
dev-python/oauth2
"

RDEPEND="
${DEPEND}
"

src_install() {
	distutils-r1_src_install
}
