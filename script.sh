#!/bin/sh

# Fail the job if there are any failures below.
set -e

test -f "package-lock.json" || (echo "Error! Expected a package-lock.json file but none was found." && exit 1)

VER=`cat package-lock.json | jq '.lockfileVersion'`

if [ "$2" != "$VER" ]; then
    echo "Error! package-lock.json lockfileVersion is $VER but expected $2" && exit 1
fi

