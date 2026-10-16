#!/bin/bash
# Didarova_Medina_system.sh - shows student and system information

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
INFO_FILE="$PROJECT_DIR/Didarova_Medina_info.txt"

echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Medina"
echo "Surname: Didarova"
echo "Group: IT2-2313"
echo "Student ID: 37944"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s) $(uname -r)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
if command -v free >/dev/null 2>&1; then
    free -h            # Linux
else
    vm_stat | head -5  # macOS has no 'free'
fi
echo

if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
