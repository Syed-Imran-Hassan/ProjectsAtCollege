#!/bin/bash
# Purpose: Checks if LibreOffice is installed
PACKAGE="libreoffice"

echo "Checking for $PACKAGE installation..."
if dpkg -l | grep -q $PACKAGE; then
    echo "[SUCCESS] $PACKAGE is installed on this system."
    dpkg -s $PACKAGE | grep "Version"
else
    echo "[ERROR] $PACKAGE is NOT found. Please install it using: sudo apt install libreoffice"
fi
