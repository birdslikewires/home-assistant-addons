#!/bin/bash
set -e

DATA_DIR="/data/companion"
mkdir -p ${DATA_DIR}

# Create a symlink from /companion to the data directory if necessary
if [ ! -L "/companion" ]; then

  # If /companion already exists, move the contents to the data directory
  if [ -d "/companion" ] && [ "$(ls -A /companion)" ]; then
    cp -a /companion/. ${DATA_DIR}/
    rm -rf /companion
  else
    rm -rf /companion
  fi
  
  ln -sf ${DATA_DIR} /companion

fi

chown -R companion: /companion
export COMPANION_CONFIG_BASEDIR="/companion"

exec /docker-entrypoint.sh
