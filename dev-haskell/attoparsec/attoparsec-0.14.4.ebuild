# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -developer

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast combinator parsing for bytestrings and text"
HOMEPAGE="https://github.com/bgamari/attoparsec"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/scientific-0.3.1:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/quickcheck-2.13.2 <dev-haskell/quickcheck-2.15
		dev-haskell/quickcheck-unicode
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-quickcheck-0.8
		dev-haskell/vector
	)
"

pkg_pretend() {
	if use test; then
		ewarn "The \"test\" USE flag for this package creates cycles within the"
		ewarn "dependency graph. This may give you problems during 'haskell-updater' runs."
		ewarn "It is recommended to leave it disabled unless explicitly testing the package."
	fi
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}
