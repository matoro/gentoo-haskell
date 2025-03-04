# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="https://www.haskell.org/haddock/"

LICENSE="BSD-2"
SLOT="0/${PV}"
# keep in sync with ghc-8.10
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RESTRICT=test

PATCHES=(
	"${FILESDIR}"/${P}-ghc-8.10.2.patch
	"${FILESDIR}"/${P}-haddock-library-1.10.patch
)

CABAL_CHDEPS=(
	'QuickCheck      >= 2.11  && < 2.14' 'QuickCheck >= 2.11'
	'haddock-library ^>= 1.9.0' 'haddock-library >= 1.9.0'
	'hspec           >= 2.4.4 && < 2.8' 'hspec >= 2.4.4'
)

RDEPEND="
	>=dev-haskell/ghc-paths-0.1.0.9:=[profile?] <dev-haskell/ghc-paths-0.2:=[profile?]
	>=dev-haskell/haddock-library-1.9.0:=[profile?]
	>=dev-haskell/xhtml-3000.2.2:=[profile?] <dev-haskell/xhtml-3000.3:=[profile?]
	>=dev-lang/ghc-8.10:= <dev-lang/ghc-8.11:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		>=dev-haskell/ghc-paths-0.1.0.12 <dev-haskell/ghc-paths-0.2
		>=dev-haskell/hspec-2.4.4
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
	)
"
