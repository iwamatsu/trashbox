#!/bin/sh

W=12
if [ -n "$1" ] ; then
    W=$1
fi

cat /dev/urandom  | tr -d -c '[:alnum:]' | fold -w ${W} | head -1
