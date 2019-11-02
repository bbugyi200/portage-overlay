# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit git-r3

DESCRIPTION="The uncompromising Python code formatter"
HOMEPAGE="https://github.com/psf/black"
EGIT_REPO_URI="https://github.com/psf/black"

LICENSE="MIT"
SLOT="0"

DEPEND="
	dev-python/appdirs
	dev-python/attrs
	dev-python/click
	dev-python/dataclasses
	>=dev-python/mypy_extensions-0.4.3
	dev-python/toml
	dev-python/typed-ast
	>=dev-python/typing-extensions-3.7.4
"
RDEPEND="${DEPEND}"

src_install() {
	cd "${P}"
    python setup.py install --prefix=/usr --root="${D}"
}
