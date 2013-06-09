# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2

# Haddock disabled due to unicode error. This should be
# fixed in the next version.
CABAL_FEATURES="bin lib profile hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An experimental alternative hierarchy of numeric type classes"
HOMEPAGE="http://www.haskell.org/haskellwiki/Numeric_Prelude"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/deepseq-1.1:=[profile?]
		<dev-haskell/deepseq-1.4:=[profile?]
		>=dev-haskell/non-negative-0.0.5:=[profile?]
		<dev-haskell/non-negative-0.2:=[profile?]
		>=dev-haskell/parsec-1:=[profile?]
		<dev-haskell/parsec-4:=[profile?]
		>=dev-haskell/quickcheck-1:=[profile?]
		<dev-haskell/quickcheck-3:=[profile?]
		=dev-haskell/random-1.0*:=[profile?]
		>=dev-haskell/storable-record-0.0.1:=[profile?]
		<dev-haskell/storable-record-0.1:=[profile?]
		>=dev-haskell/utility-ht-0.0.6:=[profile?]
		<dev-haskell/utility-ht-0.1:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtests \
		--flag=splitbase
}
