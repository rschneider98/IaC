:: Batch script to download and install git for windows, version 2.30.0
ECHO off
ECHO "Starting Download"
CURL -# -o GitInstaller.exe https://github.com/git-for-windows/git/releases/download/v2.30.0.windows.2/Git-2.30.0.2-32-bit.exe
START GitInstaller.exe