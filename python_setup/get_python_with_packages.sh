#!/bin/bash
# This file downloads and installs python version 3.7 and then installs the packages in packages.txt with pip
# Anaconda would be useful for managing a consistent environment between data analysis notebooks, instead we make a 
# separate environment and add it to jupyter notebooks as a kernel. (Anaconda is fussy on ARM)
# NOTE: To be run with Git Bash

echo "Downloading Installer"
curl -# -o PythonInstall.exe https://www.python.org/ftp/python/3.7.9/python-3.7.9-amd64.exe
echo "About to install Python, add final executable to the PATH"
./PythonInstall.exe

echo "Installing packages"
python -m pip install -r base_packages.txt

echo "Setting up Jupyter Notebooks"
cd ../../
python -m venv nb_env
./nb_env/Scripts/activate.bat
python -m pip install -r IaC/python_setup/nb-env-pkgs.txt
python -m ipykernel install --user --name=nb_env
./nb_env/Scripts/deactivate.bat
cd IaC/python_setup