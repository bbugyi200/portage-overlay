# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# DISTDIR:: /var/tmp/portage/app-shells/oh-my-zsh-9999/distdir
# WORKDIR:: /var/tmp/portage/app-shells/oh-my-zsh-9999/work
# S:: /var/tmp/portage/app-shells/oh-my-zsh-9999/work/oh-my-zsh-9999
# D:: /var/tmp/portage/app-shells/oh-my-zsh-9999/image/

EAPI=6

inherit git-r3

DESCRIPTION="A delightful community-driven (with 1,100+ contributors) framework for managing your zsh configuration."
HOMEPAGE="https://github.com/robbyrussell/oh-my-zsh"
EGIT_REPO_URI="https://github.com/robbyrussell/oh-my-zsh"

LICENSE="MIT"
SLOT="0"

DEPEND="app-shells/zsh"
RDEPEND="${DEPEND}"

src_install() {
	user="$(who am i | awk '{print $1}')"
	
	if [[ -z "$user" ]]; then
		user="$(getent passwd 1000 | awk -F: '{print $1}')"
	fi
	
	if [[ "$user" != "root" ]]; then
		dodir "/home/$user/.oh-my-zsh"
		insinto "/home/$user/.oh-my-zsh"
		for f in "${S}"; do
			doins -r "$f"
		done
	fi
}
