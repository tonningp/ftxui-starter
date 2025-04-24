#!/bin/bash
set -e

sudo apt update
sudo apt install -y cmake git build-essential \
  libgl1-mesa-dev libx11-dev libxrandr-dev \
  libxinerama-dev libxcursor-dev libxi-dev

cd /workspaces
git clone https://github.com/ArthurSonzogni/FTXUI.git
cd FTXUI
cmake -B build -S .
cmake --build build

echo "✅ FTXUI successfully built."
