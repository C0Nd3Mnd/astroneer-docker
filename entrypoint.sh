#!/bin/bash

cd /astrotux

source ./venv/bin/activate

python3 AstroTuxLauncher.py install
sed -i 's/DisableEncryption = true/DisableEncryption = false/' launcher.toml
python3 AstroTuxLauncher.py start
