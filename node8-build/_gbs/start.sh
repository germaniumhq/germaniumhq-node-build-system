#!/usr/bin/env bash

cd /src

FILENAME="$1"

while [[ "$FILENAME" != "/" && "$FILENAME" != "." ]]; do
    chown germanium:germanium $FILENAME
    FILENAME=$(dirname $FILENAME)
done # [[ "$FILENAME" != "/" ]]

if grep -q '[^[:space:]]' < "$1"; then
    echo "GBS: using project $1"
    chmod +x ./$1
    ./$1
else
    echo "GBS: using internal $1"
    /$1
fi

