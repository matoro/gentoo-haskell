# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="FunctorWithIndex, FoldableWithIndex, TraversableWithIndex"
HOMEPAGE="https://hackage.haskell.org/package/indexed-traversable"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
