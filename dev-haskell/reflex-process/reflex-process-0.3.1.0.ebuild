# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Reflex FRP interface for running system processes"
HOMEPAGE="https://hackage.haskell.org/package/reflex-process"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/async-2:=[profile?] <dev-haskell/async-3:=[profile?]
	>=dev-haskell/data-default-0.2:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/reflex-0.7.1:=[profile?] <dev-haskell/reflex-0.9:=[profile?]
	>=dev-lang/ghc-8.6.5:=
	examples? ( >=dev-haskell/reflex-vty-0.1.2.1:=[profile?] <dev-haskell/reflex-vty-0.2:=[profile?]
			>=dev-haskell/text-1.2.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
			dev-haskell/vty:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/dependent-sum
		dev-haskell/hspec
		dev-haskell/mtl
		dev-haskell/primitive
		dev-haskell/ref-tf )
"
PATCHES=( "${FILESDIR}/${PN}-0.3.1.0-add-examples-flag.patch" )

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.12 && <4.14' 'base >= 4.12'
}

src_configure() {
	cabal_src_configure \
		$(cabal_flag examples)
}