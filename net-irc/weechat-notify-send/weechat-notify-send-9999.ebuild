# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A WeeChat script that sends highlight and message notifications."
HOME="https://github.com/s3rvac/weechat-notify-send"
EGIT_REPO_URI="https://github.com/s3rvac/weechat-notify-send"

SLOT="0"
KEYWORDS="~amd64 ~x86"
DEPENDS="
net-irc/weechat
"

src_install() {
	user="$(who am i | awk '{print $1}')"
	
	if [[ -z "$user" ]] || [[ "$user" == "root" ]]; then
		user="$(getent passwd 1000 | awk -F: '{print $1}')"
	fi
	
	home="/home/$user"
	weechat_python="$home/.weechat/python"
	script="notify_send.py"

	insinto "$weechat_python"
	doins "${S}/$script"
	dosym "$weechat_python/$script" "$weechat_python/autoload/$script"
}
