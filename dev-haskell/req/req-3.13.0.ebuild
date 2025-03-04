# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -dev

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HTTP client library"
HOMEPAGE="https://github.com/mrkkrp/req"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/authenticate-oauth-1.5:=[profile?] <dev-haskell/authenticate-oauth-1.8:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/connection-0.2.2:=[profile?] <dev-haskell/connection-0.4:=[profile?]
	>=dev-haskell/http-api-data-0.2:=[profile?] <dev-haskell/http-api-data-0.6:=[profile?]
	>=dev-haskell/http-client-0.7.13.1:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.3.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-10.0:=[profile?]
	>=dev-haskell/modern-uri-0.3:=[profile?] <dev-haskell/modern-uri-0.4:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/retry-0.8:=[profile?] <dev-haskell/retry-0.10:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/unliftio-core-0.1.1:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/aeson-2 <dev-haskell/aeson-3
		>=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-core-2.0 <dev-haskell/hspec-core-3.0
		>=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-3.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
