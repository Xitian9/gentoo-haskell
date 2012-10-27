# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Command-line interface for browsing and searching packages documentation"
HOMEPAGE="http://github.com/JPMoresmau/scion-class-browser"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.4:=[profile?]
		>=dev-haskell/attoparsec-0.10:=[profile?]
		>=dev-haskell/cabal-0.10:=[profile?]
		dev-haskell/conduit:=[profile?]
		>=dev-haskell/deepseq-1.1:=[profile?]
		<dev-haskell/deepseq-2:=[profile?]
		>=dev-haskell/derive-2.5:=[profile?]
		<dev-haskell/derive-3:=[profile?]
		=dev-haskell/ghc-paths-0.1*:=[profile?]
		>=dev-haskell/haskeline-0.7:=[profile?]
		>=dev-haskell/haskell-src-exts-1.11:=[profile?]
		<dev-haskell/haskell-src-exts-2:=[profile?]
		>=dev-haskell/http-4000:=[profile?]
		<dev-haskell/http-5000:=[profile?]
		>=dev-haskell/mtl-2:=[profile?]
		>=dev-haskell/parallel-io-0.3:=[profile?]
		=dev-haskell/parsec-3*:=[profile?]
		>=dev-haskell/persistent-0.7:=[profile?]
		>=dev-haskell/persistent-sqlite-0.7:=[profile?]
		>=dev-haskell/persistent-template-0.7:=[profile?]
		>=dev-haskell/tar-0.3:=[profile?]
		<dev-haskell/tar-0.5:=[profile?]
		=dev-haskell/text-0.11*:=[profile?]
		dev-haskell/transformers:=[profile?]
		>=dev-haskell/unordered-containers-0.1.3:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		=dev-haskell/zlib-0.5*:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
