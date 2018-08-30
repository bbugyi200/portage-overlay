# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="localalias is a light-weight shell wrapper that allows you to create per-directoy command aliases."
HOMEPAGE="https://github.com/bbugyi200/localalias"
EGIT_REPO_URI="https://github.com/bbugyi200/localalias"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

DEPEND="dev-python/pygments"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}

pkg_preinst() {
	user="$(who am i | awk '{print $1}')"

	dodir "/home/$user/.config/localalias"
	insinto "/home/$user/.config/localalias"
	doins "${S}/build/lib/scripts/zsh/localalias.zsh"

	if [ -d /home/$user/.oh-my-zsh ]; then
		dodir "/home/$user/.oh-my-zsh/custom/plugins/localalias"
		dosym "/home/$user/.config/localalias/localalias.zsh" "/home/$user/.oh-my-zsh/custom/plugins/localalias/localalias.zsh"
	fi
}
