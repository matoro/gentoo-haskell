# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Introduces conduits to channels, and promotes using conduits concurrently"
HOMEPAGE="https://github.com/cgaebel/stm-conduit"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0.1:=[profile?]
	>=dev-haskell/cereal-0.4.0.1:=[profile?]
	>=dev-haskell/cereal-conduit-0.8:=[profile?]
	>=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-extra-1.0:=[profile?] <dev-haskell/conduit-extra-1.4:=[profile?]
	dev-haskell/exceptions:=[profile?]
	>=dev-haskell/monad-loops-0.4.2:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?] <dev-haskell/resourcet-1.3:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/stm-chans-2.0:=[profile?] <dev-haskell/stm-chans-3.1:=[profile?]
	>=dev-haskell/unliftio-0.2.0:=[profile?] <dev-haskell/unliftio-0.3.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/doctest
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"
