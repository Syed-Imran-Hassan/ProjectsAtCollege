#!/bin/bash
# Purpose: Gathers basic system info for the audit report
echo "--- SYSTEM IDENTITY REPORT ---"
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Operating System: $(lsb_release -d | cut -f2)"
echo "-----------------------------"
