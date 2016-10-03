# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="NameGenerator"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A name generator written in Haskell"
HOMEPAGE="https://github.com/pommicket/name-generator-haskell"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/random:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	cabal_chdeps \
		'base >=4.6 && <4.7' 'base >=4.6'
}