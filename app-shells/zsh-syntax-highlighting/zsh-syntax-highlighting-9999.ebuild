# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 eutils

DESCRIPTION="Syntax highlighting (similar to the fish shell) for ZSH"
HOMEPAGE="https://github.com/zsh-users/zsh-syntax-highlighting"
SRC_URI=""
EGIT_REPO_URI="https://github.com/zsh-users/zsh-syntax-highlighting.git"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
PROPERTIES="live"

DEPEND=">=app-shells/zsh-4.3.17"
RDEPEND="${DEPEND}"

src_prepare() {
	if [ -f "${FILESDIR}/Makefile-${PV}.patch" ]; then
		epatch "${FILESDIR}/Makefile-${PV}.patch"
	fi
	default
}

src_install() {
	user="$(who am i | awk '{print $1}')"
	
	if [[ -z "$user" ]]; then
		user="$(getent passwd 1000 | awk -F: '{print $1}')"
	fi
	
	if [[ "$user" != "root" ]]; then
		home="/home/$user"
		if [[ -n "$ZSH_CUSTOM" ]]; then
			zsh_custom="$ZSH_CUSTOM"
		else
			zsh_custom="$home/.oh-my-zsh/custom"
		fi

		install_dir="$zsh_custom/plugins/${PN}"

		insinto "$install_dir"
		for f in "${S}"/*; do
			doins -r "$f"
		done
	fi
}
