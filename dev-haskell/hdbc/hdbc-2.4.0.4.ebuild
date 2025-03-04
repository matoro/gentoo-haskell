# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999
#hackport: flags: +minTime15,+splitBase

CABAL_PN="HDBC"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell Database Connectivity"
HOMEPAGE="https://github.com/hdbc/hdbc"

LICENSE="BSD"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"

PATCHES=(
	"${FILESDIR}/${PN}-2.4.0.4-fix-tests.patch"
)

RDEPEND="
	>=dev-haskell/convertible-1.1.0.0:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.0
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=minTime15 \
		--flag=splitBase
}
