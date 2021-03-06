# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell implementation of the Nix language"
HOMEPAGE="https://github.com/jwiegley/hnix"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="parsec"

RDEPEND="dev-haskell/ansi-wl-pprint:=[profile?]
	dev-haskell/data-fix:=[profile?]
	>=dev-haskell/deriving-compat-0.3:=[profile?] <dev-haskell/deriving-compat-0.4:=[profile?]
	>=dev-haskell/parsers-0.10:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	parsec? ( dev-haskell/parsec:=[profile?] )
	!parsec? ( dev-haskell/trifecta:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-th )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag parsec parsec)
}
