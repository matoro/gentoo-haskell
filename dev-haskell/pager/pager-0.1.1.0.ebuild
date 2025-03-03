# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Open up a pager, like 'less' or 'more'"
HOMEPAGE="https://github.com/pharpend/pager"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/conduit-1.2.3:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
