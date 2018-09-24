# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit npm

DESCRIPTION="Live Markdown previews for your favorite editor."

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
dev-nodejs/body-parser
dev-nodejs/chokidar
dev-nodejs/express
dev-nodejs/markdown-it
dev-nodejs/markdown-it-emoji
dev-nodejs/markdown-it-github-headings
dev-nodejs/markdown-it-task-checkbox
dev-nodejs/minimist
dev-nodejs/opn
dev-nodejs/request
dev-nodejs/socketio
"

src_install() {
	node-module_src_install
	install_node_module_binary "bin/livedown" "/usr/bin/livedown"
}
