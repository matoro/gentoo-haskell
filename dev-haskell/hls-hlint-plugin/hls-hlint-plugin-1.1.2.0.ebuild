# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.1.0.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

# hololeap (2022-09-23)
# TODO: One test failure
# See: <https://github.com/haskell/haskell-language-server/issues/3217>
RESTRICT="test"

DESCRIPTION="Hlint integration plugin with Haskell Language Server"
HOMEPAGE="https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-hlint-plugin#readme"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/apply-refact:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	dev-haskell/extra:=[profile?]
	>=dev-haskell/ghc-exactprint-0.6.3.4:=[profile?]
	dev-haskell/ghc-lib-parser:=[profile?]
	dev-haskell/ghc-lib-parser-ex:=[profile?]
	>=dev-haskell/ghcide-1.9:=[profile?] <dev-haskell/ghcide-1.10:=[profile?]
	dev-haskell/hashable:=[profile?]
	<dev-haskell/hlint-3.6:=[profile?]
	>=dev-haskell/hls-plugin-api-1.6:=[profile?] <dev-haskell/hls-plugin-api-1.7:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/refact:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? (
		>=dev-haskell/hls-test-utils-1.5 <dev-haskell/hls-test-utils-1.6
		dev-haskell/lsp-types
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}

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
