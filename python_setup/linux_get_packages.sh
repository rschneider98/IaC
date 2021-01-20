#!/bin/bash
# This file gets a different version of python, gets packages, and creates a virutal environment for Jupyter Notebooks (Data Analysis)
apt update && apt upgrade -y
sudo apt-get install python3.7
python3.7 -m pip install -r base-pacakges.txt

# set up jupyter notebooks for data analysis 
python3.7 -m jupyter notebook --generate-config
echo "Set Jupyter Notebooks Password:"
jupyter notebook password
python3.7 -m jupyter nbextension install --py jupytext --user
python3.7 -m jupyter serverextension enable jupytext

# now create a python kernel and attach to notebook 
cd ../..
virtualenv --python=/usr/bin/python3.7 nb_env
source nb_env/bin/activate
python -m pip install -r IaC/python_setup/nb-env-pkgs.txt
python -m ipykernel install --user --name=nb_env
source nb_env/bin/deactivate
cd IaC/python_setup
