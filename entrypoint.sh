#!/bin/bash

cd /astrotux

source ./venv/bin/activate

python3 AstroTuxLauncher.py install

if [[ "$DISABLE_ENCRYPTION" =~ ^([Tt][Rr][Uu][Ee]|1|[Yy][Ee][Ss])$ ]]; then
  echo Encryption will be disabled because DISABLE_ENCRYPTION is set.
  echo Check https://github.com/C0Nd3Mnd/astroneer-docker?tab=readme-ov-file#configuring-clients for instructions on how to enable clients to connect to servers with encryption disabled.
  sed -i 's/^DisableEncryption.*/DisableEncryption = true/' launcher.toml
else
  echo Encryption will be enabled. You can safely ignore warnings related to encryption not working using Wine, this is no longer the case.
  sed -i 's/^DisableEncryption.*/DisableEncryption = false/' launcher.toml
fi

python3 AstroTuxLauncher.py start
