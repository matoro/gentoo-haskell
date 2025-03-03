# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999
#hackport: flags: -allow-unsafe-gc,-apicheck,-export-dynamic,-lua501,-lua502,-lua_32bits,-system-lua,-pkg-config

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to Lua, an embeddable scripting language"
HOMEPAGE="https://hslua.org/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/hslua-aeson-2.3:=[profile?] <dev-haskell/hslua-aeson-2.4:=[profile?]
	>=dev-haskell/hslua-classes-2.2:=[profile?] <dev-haskell/hslua-classes-2.4:=[profile?]
	>=dev-haskell/hslua-core-2.3:=[profile?] <dev-haskell/hslua-core-2.4:=[profile?]
	>=dev-haskell/hslua-marshalling-2.3:=[profile?] <dev-haskell/hslua-marshalling-2.4:=[profile?]
	>=dev-haskell/hslua-objectorientation-2.3:=[profile?] <dev-haskell/hslua-objectorientation-2.4:=[profile?]
	>=dev-haskell/hslua-packaging-2.3:=[profile?] <dev-haskell/hslua-packaging-2.4:=[profile?]
	>=dev-haskell/hslua-typing-0.1:=[profile?] <dev-haskell/hslua-typing-0.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? ( >=dev-haskell/lua-2.0
		>=dev-haskell/lua-arbitrary-1.0
		>=dev-haskell/quickcheck-2.7
		>=dev-haskell/quickcheck-instances-0.3
		>=dev-haskell/tasty-0.11
		dev-haskell/tasty-hslua
		>=dev-haskell/tasty-hunit-0.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-allow-unsafe-gc \
		--flag=-apicheck \
		--flag=-export-dynamic \
		--flag=-lua501 \
		--flag=-lua502 \
		--flag=-lua_32bits \
		--flag=-pkg-config \
		--flag=-system-lua
}
