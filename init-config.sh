#!/bin/bash

# TODO: Let GeoNature & UsersHub generate a secret key automatically on first run

if [ ! -f "${CONFIG_DIR}/geonature/geonature_config.toml" ]; then
  echo SECRET_KEY = \"$(openssl rand -hex 16)\" >"${CONFIG_DIR}/geonature/geonature_config.toml"
fi
if [ ! -f "${CONFIG_DIR}/usershub/config.py" ]; then
  echo SECRET_KEY = \"$(openssl rand -hex 16)\" >"${CONFIG_DIR}/usershub/config.py"
fi
