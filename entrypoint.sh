#!/bin/sh

wget https://dark-cli.storage.googleapis.com/latest/dark-cli-linux
chmod +x ./dark-cli-linux

export DARK_CLI_USER="$INPUT_USER"
export DARK_CLI_PASSWORD="$INPUT_PASSWORD"

./dark-cli-linux "$INPUT_PATHS" --canvas "$INPUT_CANVAS"
