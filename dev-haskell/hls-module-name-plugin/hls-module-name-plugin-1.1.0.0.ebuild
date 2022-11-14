# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

# hololeap (2022-09-23)
# TODO: One test failure
# See: <https://github.com/haskell/haskell-language-server/issues/3126#issuecomment-1256709348>
RESTRICT="test"

DESCRIPTION="Module name plugin for Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-module-name-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	>=dev-haskell/ghcide-1.8:=[profile?] <dev-haskell/ghcide-1.9:=[profile?]
	>=dev-haskell/hls-plugin-api-1.5:=[profile?] <dev-haskell/hls-plugin-api-1.6:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/hls-test-utils-1.4 <dev-haskell/hls-test-utils-1.5
	)
"

src_test() {
	# Limit tasty threads to avoid random failures
	# See: <https://github.com/haskell/haskell-language-server/issues/3224#issuecomment-1257070277>
	export TASTY_NUM_THREADS=1

	# Enable debug output for the tests
	LSP_TEST_LOG_STDERR=1 \
		LSP_TEST_LOG_MESSAGES=1 \
		haskell-cabal_src_test \
		--test-option=--color=always \
		--test-option=+RTS \
		--test-option=-T
}
