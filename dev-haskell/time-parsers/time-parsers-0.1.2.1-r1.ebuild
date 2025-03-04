# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parsers for types in 'time'"
HOMEPAGE="https://github.com/phadej/time-parsers#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"
HACKAGE_REV="4"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/parsers-0.12.2.1:=[profile?] <dev-haskell/parsers-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/attoparsec-0.12.1.6 <dev-haskell/attoparsec-0.15
		>=dev-haskell/bifunctors-4.2.1 <dev-haskell/bifunctors-5.6
		>=dev-haskell/parsers-0.12.3 <dev-haskell/parsers-0.13
		>=dev-haskell/tasty-0.10.1.2 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9.2 <dev-haskell/tasty-hunit-0.11 )
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
