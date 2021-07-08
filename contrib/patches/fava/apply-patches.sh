#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
FAVA_DIR="/usr/local/lib/python3.7/dist-packages/fava"

pushd "$FAVA_DIR"
for PATCH_FILE in "${SCRIPT_DIR}/"*.patch; do
    patch -bp0 < "$PATCH_FILE"
done