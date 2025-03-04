# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="The GHC API, decoupled from GHC versions"
HOMEPAGE="https://github.com/digital-asset/ghc-lib"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	~dev-haskell/ghc-lib-parser-9.4.4.20221225:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.1
	>=dev-haskell/cabal-3.4.1.0
	>=dev-haskell/happy-1.19.4
"
