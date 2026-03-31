#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [Sanskar Prashad Tiwari] | Reg No: [24BCG10068]
# Course: Open Source Software
# Description: Checks if Python is installed, finds its version,
# and prints a philosophy note based on the package name

# --- Variable for package name ---
PACKAGE="python3"

# --- Checking if package is installed using if-then-else ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    # Display package details using pipe and grep
    dpkg -l $PACKAGE | grep -E 'python3'
    echo ""
    echo "Python version:"
    python3 --version
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case statement: philosophy note based on package ---
echo ""

echo "Open Source Philosophy Note:"

case $PACKAGE in
    python3)
        echo "Python: a language born from a holiday project,"
        echo "now powering AI, science, and the web — all for free." ;;
    httpd|apache2)
        echo "Apache: the web server that built the open internet." ;;
    mysql|mariadb)
        echo "MySQL: open source at the heart of millions of apps." ;;
    git)
        echo "Git: the tool Linus built when proprietary software failed him." ;;
    *)
        echo "This is an open source tool — free to use, study and share." ;;
esac

