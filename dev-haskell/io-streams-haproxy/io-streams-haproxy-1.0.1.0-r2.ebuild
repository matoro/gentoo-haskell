# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999

CABAL_HACKAGE_REVISION=7

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HAProxy protocol 1.5 support for io-streams"
HOMEPAGE="https://snapframework.com/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/attoparsec-0.7:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/io-streams-1.3:=[profile?] <dev-haskell/io-streams-1.6:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.7 <dev-haskell/test-framework-hunit-0.4
	)
"
