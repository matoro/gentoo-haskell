# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HerbiePlugin"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="automatically improve your code's numeric stability"
HOMEPAGE="github.com/mikeizbicki/herbie-haskell"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # circular and too tight depends

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/sqlite-simple:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/ghc-api-7.10.1:=
	dev-lang/ghc:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

S="${WORKDIR}/${MY_P}"
