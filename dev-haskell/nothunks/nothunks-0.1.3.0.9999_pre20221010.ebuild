# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_PV="0.1.3.0.9999"
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Examine values for unexpected thunks"
HOMEPAGE="https://hackage.haskell.org/package/nothunks"

REPO_URI="https://github.com/input-output-hk/${PN}"
COMMIT="f224ca3838578045e07a81ed36552d1f4120dae2"
BRANCH="master"
SRC_URI="${REPO_URI}/archive/${COMMIT}.tar.gz -> ${PN}-${COMMIT}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"
CABAL_FILE="${S}/${PN}.cabal"

CABAL_CHDEPS=(
	'version:            0.1.3' "version:            ${CABAL_PV}"
)

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bytestring +text +vector"

RDEPEND="
	>=dev-haskell/stm-2.5:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-lang/ghc-8.10.1:=
	vector? (
		>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		>=dev-haskell/hedgehog-1.1 <dev-haskell/hedgehog-1.3
		>=dev-haskell/random-1.1 <dev-haskell/random-1.3
		>=dev-haskell/tasty-1.3 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hedgehog-1.1 <dev-haskell/tasty-hedgehog-1.4
	)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bytestring bytestring) \
		$(cabal_flag text text) \
		$(cabal_flag vector vector)
}
