#!/bin/sh
# Shrinks every photo in images/ to max 1600px wide JPEG so the site stays fast. Run from this folder.
# Usage: ./optimize-images.sh
cd "$(dirname "$0")/images" || exit 1
for f in *.jpg *.jpeg *.JPG *.JPEG *.png *.PNG *.heic *.HEIC; do
  [ -e "$f" ] || continue
  out="${f%.*}.jpg"
  sips -s format jpeg -s formatOptions 80 -Z 1600 "$f" --out "$out" >/dev/null && echo "optimised $out"
done
