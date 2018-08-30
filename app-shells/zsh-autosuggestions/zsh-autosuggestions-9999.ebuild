# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="It suggests commands as you type, based on command history."
HOMEPAGE="https://github.com/zsh-users/zsh-autosuggestions"
EGIT_REPO_URI="https://github.com/zsh-users/zsh-autosuggestions"

LICENSE="MIT"
SLOT="0"

DEPEND="app-shells/oh-my-zsh"
RDEPEND="${DEPEND}"

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
