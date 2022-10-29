# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.2.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for TH datatypes"
HOMEPAGE="https://hackage.haskell.org/package/th-orphans"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/th-compat-0.1:=[profile?] <dev-haskell/th-compat-0.2:=[profile?]
	>=dev-haskell/th-lift-0.7.1:=[profile?]
	dev-haskell/th-lift-instances:=[profile?]
	>=dev-haskell/th-reify-many-0.1:=[profile?] <dev-haskell/th-reify-many-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec )
"