#!/bin/bash

DIR="/root/backhaul-core"

SCRIPT_URL="https://raw.githubusercontent.com/mmdkevin/backhaul-installer/main/backhaul.sh"
BIN_URL="https://raw.githubusercontent.com/mmdkevin/backhaul-installer/main/backhaul_premium"

mkdir -p "$DIR"

cd "$DIR" || exit 1

echo "Downloading backhaul.sh..."
curl -L "$SCRIPT_URL" -o backhaul.sh

echo "Downloading backhaul_premium..."
curl -L "$BIN_URL" -o backhaul_premium

chmod +x backhaul.sh
chmod +x backhaul_premium

echo "Starting installer..."
./backhaul.sh
