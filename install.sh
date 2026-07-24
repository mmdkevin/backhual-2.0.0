#!/bin/bash

DIR="/root/backhaul-core"
URL="https://raw.githubusercontent.com/mmdkevin/backhaul-installer/main/backhaul.sh"

echo "Creating backhaul-core directory..."
mkdir -p "$DIR"

cd "$DIR" || exit 1

echo "Downloading backhaul.sh..."
curl -L "$URL" -o backhaul.sh

chmod +x backhaul.sh

echo "Starting backhaul installer..."
./backhaul.sh
