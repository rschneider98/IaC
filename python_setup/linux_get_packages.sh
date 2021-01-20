#!/bin/bash
# This file gets a different version of python, gets packages, and creates a virutal environment for Jupyter Notebooks (Data Analysis)
apt update && apt upgrade -y
sudo apt-get install python3.7
python3.7 -m pip install -r base-pacakges.txt
cd ../..
virtualenv --python=/usr/bin/python3.7 nb_env
source nb_env/bin/activate
python -m pip install -r nb-env-pkgs.txt
python -m ipykernel install --user --name=nb_env
source nb_env/bin/deactivate
cd IaC/python_setup
