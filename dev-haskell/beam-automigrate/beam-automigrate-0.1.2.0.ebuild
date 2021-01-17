# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="DB migration library for beam, targeting Postgres"
HOMEPAGE="https://hackage.haskell.org/package/beam-automigrate"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="ghcipretty examples"

PATCHES=( "${FILESDIR}/${P}-add-examples-flag.patch" )

RDEPEND=">=dev-haskell/aeson-1.4.4:=[profile?]
	>=dev-haskell/beam-core-0.9:=[profile?] <dev-haskell/beam-core-0.10:=[profile?]
	>=dev-haskell/beam-postgres-0.5:=[profile?] <dev-haskell/beam-postgres-0.6:=[profile?]
	>=dev-haskell/dlist-0.8.0:=[profile?]
	>=dev-haskell/microlens-0.4.10:=[profile?] <dev-haskell/microlens-0.6:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.4:=[profile?]
	>=dev-haskell/postgresql-simple-0.5.4:=[profile?] <dev-haskell/postgresql-simple-0.7.0.0:=[profile?]
	>=dev-haskell/pretty-simple-2.2.0:=[profile?] <dev-haskell/pretty-simple-3.3:=[profile?]
	>=dev-haskell/quickcheck-2.13:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	>=dev-haskell/quickcheck-instances-0.3:=[profile?] <dev-haskell/quickcheck-instances-0.4:=[profile?]
	>=dev-haskell/scientific-0.3.6:=[profile?] <dev-haskell/scientific-0.5:=[profile?]
	>=dev-haskell/splitmix-0.0.3:=[profile?]
	>=dev-haskell/string-conv-0.1.2:=[profile?] <dev-haskell/string-conv-0.3:=[profile?]
	>=dev-haskell/text-1.2.0.0:=[profile?] <dev-haskell/text-1.3.0.0:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/vector-0.12.0.3:=[profile?] <dev-haskell/vector-0.13.0.0:=[profile?]
	>=dev-lang/ghc-8.6.5:=
	examples? ( dev-haskell/resource-pool:=[profile?]
		dev-haskell/gargoyle-postgresql-connect:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

src_prepare() {
	default
	cabal_chdeps\
		'aeson                 >=1.4.4    && <1.5' 'aeson >=1.4.4'\
		'dlist                 >=0.8.0    && <0.10' 'dlist >=0.8.0'\
		'splitmix              >=0.0.3    && <0.1' 'splitmix >=0.0.3'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag ghcipretty) \
		$(cabal_flag examples)
}