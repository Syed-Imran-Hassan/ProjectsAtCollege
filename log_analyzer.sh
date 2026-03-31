#!/bin/bash
# Purpose: Searches system logs for LibreOffice-related entries
LOG_FILE="/var/log/syslog"

echo "Analyzing $LOG_FILE for LibreOffice activity..."
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found or permission denied. Try running with sudo."
    exit 1
fi

# Search for the keyword "libreoffice" or "soffice"
grep -i "libreoffice" $LOG_FILE | tail -n 5
