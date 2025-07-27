#!/bin/sh
SCHEME_NAME=
TARGET=

# Exit immediately if error occurs
set -Eeuo pipefail

# Check if we have xcbeautify installed
command -v xcbeautify >/dev/null 2>&1 || { echo >&2 "xcbeautify is required. https://github.com/cpisciotta/xcbeautify"; exit 1; }

xcodebuild -configuration Debug -scheme ${SCHEME_NAME} -sdk iphonesimulator -target ${TARGET} -derivedDataPath ./deriveddata/ -scmProvider system clean test | xcbeautify

echo "\033[33;32mCompleted successfully."
