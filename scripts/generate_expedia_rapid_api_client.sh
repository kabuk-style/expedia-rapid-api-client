#!/usr/bin/env bash

cd "$(dirname "$0")/.."

if ! command -v openapi-generator-cli > /dev/null 2>&1; then
  echo "openapi-generator-cli is not installed."
  exit 1
fi
openapi-generator-cli generate -g ruby -o ./ -i ./openapi.json --additional-properties=gemName=expedia_rapid,library=faraday,moduleName=ExpediaRapid
