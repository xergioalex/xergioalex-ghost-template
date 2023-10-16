#!/bin/bash

# Utils functions
. ./../utils.sh

# Create envs vars if don't exist
utils.load_environment
ENV_FILES=(".env" "../../.env" "ghost/.env")
utils.check_envs_files "${ENV_FILES[@]}"
utils.load_environment_permissions

if [[ "$1" == "deploy" ]]; then
  utils.printer "Deploying code..."
  docker-compose up ghost
fi
