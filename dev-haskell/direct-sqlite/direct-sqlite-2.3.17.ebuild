# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level binding to SQLite3.  Includes UTF8 and BLOB support"
HOMEPAGE="https://github.com/IreneKnapp/direct-sqlite"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+fulltextsearch systemlib +urifilenames"

RESTRICT=test # relies on exact backtrace text

RDEPEND=">=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	systemlib? ( >=dev-db/sqlite-3.0 )
	!systemlib? ( virtual/libc )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/base16-bytestring
		dev-haskell/hunit
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag fulltextsearch fulltextsearch) \
		$(cabal_flag systemlib systemlib) \
		$(cabal_flag urifilenames urifilenames)
}
