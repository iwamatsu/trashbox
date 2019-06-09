#!/bin/sh

TAEGET=nigauri
if [ -n "$1" ] ; then
  TAEGET=$1
fi

if [ "$TARGET" == "debian" ] ; then
  git config --local user.name "Nobuhiro Iwamatsu"
  git config --local user.email "iwamatsu@debian.org"
elif [ "$TARGET" == "nigauri" ] ; then
  git config --local user.name "Nobuhiro Iwamatsu"
  git config --local user.email "iwamatsu@nigauri.org"
fi
