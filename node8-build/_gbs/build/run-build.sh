#!/usr/bin/env bash

env

echo webpack "${WEBPACK_EXTRA_PARAMETERS}"

if [[ "$WEBPACK_EXTRA_PARAMETERS" != "" ]]; then
    webpack "${WEBPACK_EXTRA_PARAMETERS}"
else
    webpack
fi # [[ "$MAVEN_EXTRA_PARAMETERS" != "" ]]
