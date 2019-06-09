#!/bin/sh

STABLE='4.4 4.9 4.14 4.19'
for v in $STABLE ; do
  git branch linux-${v}.y-rc stable-rc/linux-${v}.y
  git branch linux-${v}.y  stable/linux-${v}.y
done
