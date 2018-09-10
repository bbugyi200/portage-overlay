# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="localalias is a light-weight shell wrapper that allows you to create per-directoy command aliases."
HOMEPAGE="https://github.com/bbugyi200/localalias"
EGIT_REPO_URI="https://github.com/bbugyi200/localalias"

LICENSE="MIT"
SLOT="0"

DEPEND="dev-python/pygments"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
	python setup.py install --prefix=/usr --root="${D}"
}

pkg_preinst() {
	user="$(who am i | awk '{print $1}')"

	if [[ -z "$user" ]] || [[ "$user" == "root" ]]; then
		user="$(getent passwd 1000 | awk -F: '{print $1}')"
	fi

	DATA_DIR=/home/"$user"/.local/share/localalias
	dodir "$DATA_DIR"
	insinto "$DATA_DIR"
	doins "${S}/build/lib/scripts/zsh/localalias.zsh"
}
