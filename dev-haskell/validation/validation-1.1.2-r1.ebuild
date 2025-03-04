# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A data-type like Either but with an accumulating Applicative"
HOMEPAGE="https://github.com/qfpl/validation"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'lens       >= 4    && < 5' 'lens >=4'
	'hedgehog   >= 0.5  && < 1.1' 'hedgehog >= 0.5'
)

RDEPEND=">=dev-haskell/assoc-1:=[profile?] <dev-haskell/assoc-1.1:=[profile?]
	>=dev-haskell/bifunctors-5.5:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/lens-4:=[profile?] <dev-haskell/lens-6:=[profile?]
	>=dev-haskell/semigroupoids-5:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/hedgehog-0.5
		>=dev-haskell/hunit-1.5 <dev-haskell/hunit-1.7
		>=dev-haskell/lens-4
	)
"
