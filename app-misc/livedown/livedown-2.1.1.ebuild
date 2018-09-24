# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

NODE_MODULE_DEPEND="
body-parser
chokidar
express
markdown-it
markdown-it-emoji
markdown-it-github-headings
markdown-it-task-checkbox
minimist
opn
request
socketio
"

inherit node-module

DESCRIPTION="Live Markdown previews for your favorite editor."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
