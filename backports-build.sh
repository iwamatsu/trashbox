#!/bin/sh

BASE_PKG_VERSION=$1

DIST=buster \
ARCH=amd64 \
	gbp buildpackage --git-debian-branch=buster-backports \
		--git-builder=git-pbuilder \
		-sa -v${BASE_PKG_VERSION}

echo "debsign to *amd64.changes, and upload to use dput"
