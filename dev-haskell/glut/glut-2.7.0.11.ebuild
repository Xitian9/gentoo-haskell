# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -usenativewindowslibraries,buildexamples:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="GLUT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for the OpenGL Utility Toolkit"
HOMEPAGE="http://www.haskell.org/haskellwiki/Opengl"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-3.1:=[profile?]
	>=dev-haskell/statevar-1.1:=[profile?] <dev-haskell/statevar-1.2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	examples? ( >=dev-haskell/openglraw-1.0:=[profile?] <dev-haskell/openglraw-3.3:=[profile?]
			>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples) \
		--flag=-usenativewindowslibraries
}