#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [Sanskar Prashad Tiwari] | Reg No: [24BCG10068]
# Course: Open Source Software
# Description: Asks the user 3 questions interactively and generates
# a personalised open source philosophy statement saved to a file

# --- Alias concept demonstrated ---
# alias cls='clear' would clear the screen (shown as comment)
# We use 'read' for interactive user input instead


echo " Open Source Manifesto Generator"

echo "Answer three questions to generate your manifesto."
echo ""

# --- Reading user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Getting current date ---
DATE=$(date '+%d %B %Y')

# --- Getting username for filename ---
USERNAME=$(whoami)
OUTPUT="manifesto_${USERNAME}.txt"

# --- String concatenation to compose the manifesto ---
MANIFESTO="Open Source Manifesto — $DATE

I believe in the power of open source software.
Every day I use $TOOL — a tool built freely by the community,
for the community. To me, freedom means $FREEDOM.
That is exactly what open source represents.

Just as Guido van Rossum shared Python with the world
during a Christmas holiday in 1989, I too believe that
knowledge grows when it is shared. One day I will build
$BUILD and release it freely for anyone to use,
study, modify and improve.

Standing on the shoulders of giants like Python, Linux,
and the entire open source movement — I commit to giving
back to the community that gave so much to the world.

— $USERNAME | $DATE"

# --- Writing manifesto to file using > ---
echo "$MANIFESTO" > $OUTPUT

echo ""

echo "Your manifesto has been saved to: $OUTPUT"

echo ""

# --- Displaying the file contents ---
cat $OUTPUT

