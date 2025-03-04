# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A cross-platform, cross-console way to handle echoing terminal input"
HOMEPAGE="https://github.com/RyanGlScott/echo"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

# Change example name to avoid name collisions
CABAL_CHDEPS=(
	'executable password' 'executable haskell-echo-example'
)

RDEPEND="
	|| ( dev-lang/ghc ( >=dev-haskell/process-1.0.1.1[profile?] <dev-haskell/process-1.7[profile?] ) )
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example)
}
