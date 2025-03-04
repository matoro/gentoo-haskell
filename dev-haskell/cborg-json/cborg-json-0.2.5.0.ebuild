# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A library for encoding JSON as CBOR"
HOMEPAGE="https://github.com/well-typed/cborg"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/aeson-pretty-0.8:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/cborg-0.2:=[profile?] <dev-haskell/cborg-0.3:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
