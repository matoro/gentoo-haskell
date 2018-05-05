# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5
#hackport: flags: -double

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Command-line interface for the hledger accounting tool"
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+terminfo +threaded"

RDEPEND=">=dev-haskell/ansi-terminal-0.6.2.3:=[profile?]
	>=dev-haskell/base-compat-0.8.1:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	dev-haskell/csv:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	dev-haskell/decimal:=[profile?]
	dev-haskell/diff:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?]
	>=dev-haskell/haskeline-0.6:=[profile?]
	dev-haskell/here:=[profile?]
	>=dev-haskell/hledger-lib-1.9.1:=[profile?] <dev-haskell/hledger-lib-2.0:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/lucid:=[profile?]
	>=dev-haskell/megaparsec-5.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/mtl-compat:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/pretty-show-1.6.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/shakespeare-2.0.2.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?]
	>=dev-haskell/utility-ht-0.0.13:=[profile?]
	>=dev-haskell/wizards-1.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	terminfo? ( dev-haskell/terminfo:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-double \
		$(cabal_flag terminfo terminfo) \
		$(cabal_flag threaded threaded)
}
