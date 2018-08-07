# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Structured logging solution (PostgreSQL back end)"
HOMEPAGE="https://github.com/scrive/log"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.11.0.0:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.2:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/hpqtypes-1.5:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	>=dev-haskell/log-base-0.7:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-show-2:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
