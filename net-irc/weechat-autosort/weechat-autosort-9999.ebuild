# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

WEECHAT_FILETYPE=python

inherit weechat

DESCRIPTION="Quick jump to buffers."
SLOT="0"

src_configure() {
    die "LIBRARY_PATH = $LIBRARY_PATH\nLD_LIBRARY_PATH = $LD_LIBRARY_PATH\nLPATH = $LPATH\nGCC_EXEC_PREFIX = $GCC_EXEC_PREFIX"
}
