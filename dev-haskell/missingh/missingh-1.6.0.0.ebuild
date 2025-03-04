# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: +network--ge-3_0_0

CABAL_PN="MissingH"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Large utility library"
HOMEPAGE="https://hackage.haskell.org/package/MissingH"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux"

RDEPEND=">=dev-haskell/hslogger-1.3.0.0:=[profile?] <dev-haskell/hslogger-1.4:=[profile?]
	>=dev-haskell/network-3.0:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/network-bsd-2.8.1:=[profile?] <dev-haskell/network-bsd-2.9:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/old-time-1.1:=[profile?] <dev-haskell/old-time-1.2:=[profile?]
	|| ( dev-lang/ghc ( >=dev-haskell/process-1.1.0.1[profile?] <dev-haskell/process-1.7[profile?] ) )
	>=dev-haskell/regex-compat-0.95.1:=[profile?] <dev-haskell/regex-compat-0.96:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=network--ge-3_0_0
}
