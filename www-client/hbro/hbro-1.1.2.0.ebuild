# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Minimal KISS compliant browser"
HOMEPAGE="http://projects.haskell.org/hbro/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="WTFPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+threaded"

RDEPEND="dev-haskell/cond:=[profile?]
		dev-haskell/data-default:=[profile?]
		>=dev-haskell/dyre-0.8.8:=[profile?]
		dev-haskell/glib:=[profile?]
		>=dev-haskell/gtk-0.12.3:2=[profile?]
		dev-haskell/lens:=[profile?]
		dev-haskell/monad-control:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/pango:=[profile?]
		dev-haskell/transformers:=[profile?]
		dev-haskell/transformers-base:=[profile?]
		dev-haskell/webkit:=[profile?]
		dev-haskell/xdg-basedir:=[profile?]
		>=dev-haskell/zeromq3-haskell-0.2:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag threaded threaded)
}
