#!/bin/bash
# This file is meant to be run by Git Bash on 64-bit Windows

# Download Version 1.54.0 of Atom
echo "Starting Atom Configuration"
echo "Starting download"
curl -# -o AtomSetup_x64.exe https://github.com/atom/atom/releases/download/v1.54.0/AtomSetup-x64.exe
# Install Atom by running the installer
echo "Installing"
./AtomSetup_x64.exe

echo "Installing packages"
cat ./atom-packages.txt | awk 'BEGIN {ORS=" "; print "apm install"} {print $0}' | sh