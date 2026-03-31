#!/bin/bash
# Purpose: Scans for insecure (777) permissions in the project folder
TARGET_DIR="."

echo "Scanning $TARGET_DIR for world-writable files (Security Risk)..."
# Find files with 777 permissions
INSECURE=$(find $TARGET_DIR -type f -perm 0777)

if [ -z "$INSECURE" ]; then
    echo "Scan Complete: No world-writable files found. System is secure."
else
    echo "WARNING: The following files have insecure permissions:"
    echo "$INSECURE"
fi
