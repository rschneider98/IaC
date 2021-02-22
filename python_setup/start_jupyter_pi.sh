#!/bin/bash
# Starts the jupyter notebook hosted on the local network
nohup python3.7 -m jupyter notebook --port 8889 --ip 0.0.0.0 &
