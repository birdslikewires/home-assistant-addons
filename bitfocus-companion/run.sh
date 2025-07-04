#!/bin/bash
set -e

# Create the data directory in Home Assistant data folder
DATA_DIR="/data/companion"
mkdir -p ${DATA_DIR}
chown -R companion:companion ${DATA_DIR}

# Create a symlink from /companion to the data directory if necessary
if [ ! -L "/companion" ]; then
  # If /companion already exists, move the contents to the data directory
  if [ -d "/companion" ] && [ "$(ls -A /companion)" ]; then
    cp -a /companion/. ${DATA_DIR}/
    rm -rf /companion
  else
    rm -rf /companion
  fi
  
  # Create the symlink
  ln -sf ${DATA_DIR} /companion
fi

# Make sure the companion user is the owner
chown -R companion:companion /companion

# Start Companion via the default entry point with the correct parameters
exec /docker-entrypoint.sh ./node-runtimes/main/bin/node ./main.js --admin-address 0.0.0.0 --admin-port 8000 --config-dir $COMPANION_CONFIG_BASEDIR --extra-module-path /app/module-local-dev
