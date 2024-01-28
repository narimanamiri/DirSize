#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi
for dir in "$1"/*; do
  if [ -d "$dir" ]; then
    size=$(du -sh "$dir" 2>/dev/null | cut -f1)
    echo "Directory: $dir, Size: $size"
  fi
done
