#!/usr/bin/env bash

cd "$(dirname "$0")/.."

if ! command -v openapi-generator > /dev/null 2>&1; then
  echo "openapi-generator is not installed."
  exit 1
fi
openapi-generator generate -g ruby -o ./ -i ./openapi.yaml --additional-properties=gemName=expedia_rapid,library=faraday,moduleName=ExpediaRapid
