#!/bin/bash
# Script 4: Log File Analyzer
# Author: [Sanskar Prashad Tiwari] | Reg No: [24BCG10068]
# Course: Open Source Software
# Description: Reads a log file line by line, counts occurrences
# of a keyword and prints the last 5 matching lines

# --- Command line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# --- Checking if file was provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: bash script4.sh <logfile> <keyword>"
    echo "Example: bash script4.sh /var/log/dpkg.log installed"
    exit 1
fi

# --- Checking if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Checking if file is empty, retry with default log ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: $LOGFILE is empty. Switching to /var/log/dpkg.log"
    LOGFILE="/var/log/dpkg.log"
fi


echo " Log File Analyzer"

echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"


# --- While read loop: going through file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."


# --- Printing the last 5 matching lines ---
echo "Last 5 matching lines:"

grep -i "$KEYWORD" "$LOGFILE" | tail -5

