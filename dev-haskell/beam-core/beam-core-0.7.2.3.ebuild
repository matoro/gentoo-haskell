# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Type-safe, feature-complete SQL query and manipulation interface for Haskell"
HOMEPAGE="http://travis.athougies.net/projects/beam.html"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="" # IUSE="werror"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/dlist-0.7.1.2:=[profile?] <dev-haskell/dlist-0.9:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/microlens-0.4:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-sized-0.5:=[profile?] <dev-haskell/vector-sized-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit )
"

#src_configure() {
#	haskell-cabal_src_configure \
#		$(cabal_flag werror werror)
#}