# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast Splittable PRNG"
HOMEPAGE="https://hackage.haskell.org/package/splitmix"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="optimised-mixer"

RDEPEND="
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? (
		>=dev-haskell/async-2.2.1 <dev-haskell/async-2.3
		>=dev-haskell/base-compat-0.11.1 <dev-haskell/base-compat-0.13
		>=dev-haskell/base-compat-batteries-0.10.5 <dev-haskell/base-compat-batteries-0.13
		>=dev-haskell/hunit-1.6.0.0 <dev-haskell/hunit-1.7
		>=dev-haskell/math-functions-0.3.3.0 <dev-haskell/math-functions-0.4
		|| ( dev-lang/ghc ( >=dev-haskell/process-1.0.1.5 <dev-haskell/process-1.7 ) )
		dev-haskell/random
		>=dev-haskell/test-framework-0.8.2.0 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3.0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/tf-random-0.5 <dev-haskell/tf-random-0.6
		>=dev-haskell/vector-0.11.0.0 <dev-haskell/vector-0.13
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
		$(cabal_flag optimised-mixer optimised-mixer)
}
