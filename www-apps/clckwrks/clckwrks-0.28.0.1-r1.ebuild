# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: +network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A secure, reliable content management system (CMS) and blogging platform"
HOMEPAGE="https://www.clckwrks.com/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'happstack-server             >= 7.0  && < 7.8' 'happstack-server >= 7.0'
	'lens                         >= 4.3  && < 5.2' 'lens >= 4.3'
)

RDEPEND="
	>=dev-haskell/aeson-0.11:=[profile?] <=dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/acid-state-0.12:=[profile?] <dev-haskell/acid-state-0.17:=[profile?]
	>=dev-haskell/aeson-qq-0.7:=[profile?] <dev-haskell/aeson-qq-0.9:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/happstack-authenticate-2.6:=[profile?] <dev-haskell/happstack-authenticate-2.7:=[profile?]
	>=dev-haskell/happstack-hsp-7.3:=[profile?] <dev-haskell/happstack-hsp-7.4:=[profile?]
	>=dev-haskell/happstack-jmacro-7.0:=[profile?] <dev-haskell/happstack-jmacro-7.1:=[profile?]
	>=dev-haskell/happstack-server-7.0:=[profile?]
	>=dev-haskell/happstack-server-tls-7.1:=[profile?] <dev-haskell/happstack-server-tls-7.3:=[profile?]
	>=dev-haskell/hsp-0.9:=[profile?] <dev-haskell/hsp-0.11:=[profile?]
	>=dev-haskell/hsx-jmacro-7.3:=[profile?] <dev-haskell/hsx-jmacro-7.4:=[profile?]
	>=dev-haskell/hsx2hs-0.13:=[profile?] <dev-haskell/hsx2hs-0.15:=[profile?]
	<dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/ixset-1.0:=[profile?] <dev-haskell/ixset-1.2:=[profile?]
	>=dev-haskell/jmacro-0.6:=[profile?] <dev-haskell/jmacro-0.7:=[profile?]
	>=dev-haskell/lens-4.3:=[profile?]
	>dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-3.2:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/reform-0.2:=[profile?] <dev-haskell/reform-0.4:=[profile?]
	>=dev-haskell/reform-happstack-0.2:=[profile?] <dev-haskell/reform-happstack-0.3:=[profile?]
	>=dev-haskell/reform-hsp-0.2:=[profile?] <dev-haskell/reform-hsp-0.3:=[profile?]
	>=dev-haskell/safecopy-0.10:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/userid-0.1:=[profile?] <dev-haskell/userid-0.2:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/uuid-orphans-1.2:=[profile?] <dev-haskell/uuid-orphans-1.5:=[profile?]
	>=dev-haskell/uuid-types-1.0:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-haskell/web-plugins-0.4:=[profile?] <dev-haskell/web-plugins-0.5:=[profile?]
	dev-haskell/web-routes:=[profile?]
	dev-haskell/web-routes-happstack:=[profile?]
	dev-haskell/web-routes-hsp:=[profile?]
	>=dev-haskell/web-routes-th-0.21:=[profile?]
	>=dev-haskell/xss-sanitize-0.3:=[profile?] <dev-haskell/xss-sanitize-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
BDEPEND="
	dev-haskell/hsx2hs
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=network-uri
}
