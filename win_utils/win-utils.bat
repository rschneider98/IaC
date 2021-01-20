:: Batch script to download and install
:: Git for windows, version 2.30.0
:: FileZilla, version 3.52.2
:: PuTTY, version 0.74
ECHO off
ECHO "Starting Download of Git for Windows"
CURL -# -o GitInstaller.exe https://github.com/git-for-windows/git/releases/download/v2.30.0.windows.2/Git-2.30.0.2-32-bit.exe
START GitInstaller.exe

ECHO "Starting Download for FileZilla"
CURL -# -o FileZillaInstaller.exe https://download.filezilla-project.org/client/FileZilla_3.52.2_win64_sponsored-setup.exe
START FileZillaInstaller.exe

ECHO "Starting Download for PuTTY"
CURL -# -o PuTTYInstaller.msi https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.74-installer.msi
START PuTTYInstaller.msi