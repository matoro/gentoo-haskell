# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: -testing,use_xft:xft

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Third party extensions for xmonad"
HOMEPAGE="http://xmonad.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE="+xft"

RDEPEND="dev-haskell/extensible-exceptions:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-haskell/x11-1.6.1:=[profile?] <dev-haskell/x11-1.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=x11-wm/xmonad-0.11:=[profile?] <x11-wm/xmonad-0.12:=[profile?]
	xft? ( >=dev-haskell/x11-xft-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	# Upstream bug 597 xmonad-contrib-0.11.4 does not compile
	# https://code.google.com/p/xmonad/issues/detail?id=597
	epatch "${FILESDIR}"/${P}-import-Applicative.patch

	# https://ghc.haskell.org/trac/ghc/ticket/10667
	[[ $(ghc-version) == 7.10.1.20150630 ]] && replace-hcflags -g ''
	[[ $(ghc-version) == 7.10.2 ]] && replace-hcflags -g ''
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-testing \
		$(cabal_flag xft use_xft)
}
