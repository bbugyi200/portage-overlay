# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="localalias is a light-weight shell wrapper that allows you to create per-directoy command aliases."
HOMEPAGE="https://github.com/bbugyi200/localalias"
SRC_URI="https://github.com/bbugyi200/${PN}/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/pygments"
RDEPEND="${DEPEND}"

pkg_preinst() {
	user="$(who | awk '{print $1}')"

	dodir "/home/$user/.config/localalias"
	insinto "/home/$user/.config/localalias"
	doins "${S}/build/lib/scripts/zsh/localalias.zsh"

	if [ -d /home/$user/.oh-my-zsh ]; then
		dodir "/home/$user/.oh-my-zsh/custom/plugins/localalias"
		dosym "/home/$user/.config/localalias/localalias.zsh" "/home/$user/.oh-my-zsh/custom/plugins/localalias/localalias.zsh"
	fi
}
