# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Safety for the pipes ecosystem"
HOMEPAGE="http://hackage.haskell.org/package/pipes-safe"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	<dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/monad-control-1.0.0.4:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pipes-4.3.0:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/primitive-0.6.2.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"