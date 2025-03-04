# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient implementation of a dependent map with types as keys"
HOMEPAGE="https://github.com/kowainik/typerep-map"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/primitive-0.7.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/ghc-typelits-knownnat-0.4.2 <dev-haskell/ghc-typelits-knownnat-0.8
		>=dev-haskell/hedgehog-1.0 <dev-haskell/hedgehog-1.3
		>=dev-haskell/hspec-2.7.1 <dev-haskell/hspec-2.11
		>=dev-haskell/hspec-hedgehog-0.0.1 <dev-haskell/hspec-hedgehog-0.1
	)
"
