# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="ElasticSearch client library for Haskell"
HOMEPAGE="https://github.com/bitemyapp/bloodhound"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="-es1 -es5"

RESTRICT=test # tries to access network for testing

RDEPEND=">=dev-haskell/aeson-0.11.1:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/http-client-0.4.30:=[profile?] <dev-haskell/http-client-0.7:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/mtl-1.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/scientific-0.3.0.0:=[profile?] <dev-haskell/scientific-0.4.0.0:=[profile?]
	>=dev-haskell/semigroups-0.15:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	dev-haskell/semver:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/vector-0.10.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'containers       >= 0.5.0.0 && <0.6' 'containers >= 0.5 && <0.7' \
		'http-client      >= 0.4.30  && <0.6' 'http-client      >= 0.4.30' \
		'time             >= 1.4     && <1.9' 'time             >= 1.4'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag es1 es1) \
		$(cabal_flag es5 es5)
}
