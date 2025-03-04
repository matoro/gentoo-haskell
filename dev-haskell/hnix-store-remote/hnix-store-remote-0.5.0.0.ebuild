# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -io-testsuite

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal

# The tests try to do unusual things:
# hnix-store-remote-tests: /proc/self/uid_map: writeUserMappings: permission denied (Permission denied)
RESTRICT="test"

DESCRIPTION="Remote hnix store"
HOMEPAGE="https://github.com/haskell-nix/hnix-store"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/attoparsec:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	>=dev-haskell/hnix-store-core-0.5:=[profile?] <dev-haskell/hnix-store-core-0.6:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/nix-derivation-1.1.1:=[profile?] <dev-haskell/nix-derivation-2:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1"
#	test? ( io-testsuite? ( dev-haskell/hspec
#				dev-haskell/hspec-expectations-lifted
#				dev-haskell/linux-namespaces
#				dev-haskell/quickcheck-text
#				dev-haskell/tasty
#				dev-haskell/tasty-hspec
#				dev-haskell/tasty-quickcheck
#				dev-haskell/temporary
#				dev-haskell/vector ) )


src_configure() {
	haskell-cabal_src_configure \
		--flag=-io-testsuite
}
