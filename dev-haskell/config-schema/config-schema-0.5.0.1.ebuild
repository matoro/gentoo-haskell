# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Schema definitions for the config-value package"
HOMEPAGE="https://github.com/glguy/config-schema"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/config-value-0.6:=[profile?] <dev-haskell/config-value-0.7:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.1:=[profile?]
	>=dev-haskell/kan-extensions-5.0.2:=[profile?] <dev-haskell/kan-extensions-5.2:=[profile?]
	>=dev-haskell/semigroupoids-5.1:=[profile?] <dev-haskell/semigroupoids-5.3:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
