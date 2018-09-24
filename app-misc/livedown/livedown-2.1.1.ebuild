# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit node-module

NODE_MODULE_DEPEND="body-parser:1.9.2
chokidar:1.6.1
express:4.10.2
markdown-it:8.3.1
markdown-it-emoji:1.4.0
markdown-it-github-headings:1.0.1
markdown-it-task-checkbox:1.0.4
minimist:1.1.0
opn:5.1.0
request:2.48.0
socket.io:2.0.3
"

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
dev-nodejs/socket.io
"

src_install() {
	node-module_src_install
	install_node_module_binary "bin/livedown" "/usr/bin/livedown"
}
