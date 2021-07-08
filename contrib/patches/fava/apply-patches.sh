#!/bin/bash
set -Eeuo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
FAVA_DIR="/usr/local/lib/python3.7/dist-packages/fava"

pushd "$FAVA_DIR"
for PATCH_FILE in "${SCRIPT_DIR}/"*.patch; do
    patch --backup-if-mismatch --strip=0 --forward < "$PATCH_FILE" || true
done
