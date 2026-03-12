#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:-v1.0.0}"
OUT_DIR="release"
ZIP_NAME="custom_dpi_zram_411-${VERSION}.zip"

mkdir -p "$OUT_DIR"
zip -j "$OUT_DIR/$ZIP_NAME" module.prop customize.sh service.sh README.md

echo "Created: $OUT_DIR/$ZIP_NAME"
