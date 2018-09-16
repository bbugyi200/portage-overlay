# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: weechat.eclass
# @MAINTAINER:
# Bryan Bugyi
# @AUTHOR:
# Bryan Bugyi
# @BLURB: 
# @DESCRIPTION:
# Eclass for WeeChat plugins.

inherit git-r3

if [[ -n "$WEECHAT_GITREPO" ]]; then
	HOME="$WEECHAT_GITREPO"
	EGIT_REPO_URI="$WEECHAT_GITREPO"
else
	HOME="https://github.com/weechat/scripts"
	EGIT_REPO_URI="https://github.com/weechat/scripts"
fi

DEPEND="
net-irc/weechat
"

EXPORT_FUNCTIONS src_install

weechat_src_install() {
	user="$(who am i | awk '{print $1}')"
	
	if [[ -z "$user" ]] || [[ "$user" == "root" ]]; then
		user="$(getent passwd 1000 | awk -F: '{print $1}')"
	fi

	home="/home/$user"
	WEECHAT_DIR="$home"/.weechat

	MY_PN="$(echo "${PN#weechat-}" | sed 's/-/_/g')"

	case "$WEECHAT_FILETYPE" in
		perl )
			EXT=pl
			;;
		python )
			EXT=py
			;;
		'' )
			die "WEECHAT_FILETYPE is not defined."
			;;
		* )
			die "$WEECHAT_FILETYPE is not a supported filetype."
			;;
	esac

	INST_DIR="$WEECHAT_DIR/$WEECHAT_FILETYPE"
	SCRIPT="$MY_PN.$EXT"

	insinto "$INST_DIR"

	if [[ -n "$WEECHAT_GITREPO" ]]; then
		doins "${S}/$SCRIPT"
	else
		doins "${S}/$WEECHAT_FILETYPE/$SCRIPT"
	fi

	dosym "$INST_DIR/$SCRIPT" "$INST_DIR/autoload/$MY_PN.$EXT"
}
