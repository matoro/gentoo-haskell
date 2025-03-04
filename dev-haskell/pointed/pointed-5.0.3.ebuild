# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: +containers

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Pointed and copointed data"
HOMEPAGE="https://github.com/ekmett/pointed/"
HACKAGE_REV="1"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+comonad +kan-extensions +semigroupoids +semigroups +stm +tagged +transformers +unordered-containers"

RDEPEND=">=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	comonad? ( >=dev-haskell/comonad-5:=[profile?] <dev-haskell/comonad-6:=[profile?] )
	kan-extensions? ( >=dev-haskell/kan-extensions-5:=[profile?] <dev-haskell/kan-extensions-6:=[profile?] )
	semigroupoids? ( >=dev-haskell/semigroupoids-4:=[profile?] <dev-haskell/semigroupoids-6:=[profile?] )
	semigroups? ( >=dev-haskell/semigroups-0.8.3.1:=[profile?] <dev-haskell/semigroups-1:=[profile?] )
	stm? ( >=dev-haskell/stm-2.1.2.1:=[profile?] <dev-haskell/stm-2.6:=[profile?] )
	tagged? ( >=dev-haskell/tagged-0.5:=[profile?] <dev-haskell/tagged-1:=[profile?] )
	transformers? ( >=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-1:=[profile?] )
	unordered-containers? ( >=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
				>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag comonad comonad) \
		--flag=containers \
		$(cabal_flag kan-extensions kan-extensions) \
		$(cabal_flag semigroupoids semigroupoids) \
		$(cabal_flag semigroups semigroups) \
		$(cabal_flag stm stm) \
		$(cabal_flag tagged tagged) \
		$(cabal_flag transformers transformers) \
		$(cabal_flag unordered-containers unordered-containers)
}
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
