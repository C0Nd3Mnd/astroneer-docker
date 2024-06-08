#!/bin/bash

cd /astrotux

source ./venv/bin/activate

python3 AstroTuxLauncher.py install
python3 AstroTuxLauncher.py start
