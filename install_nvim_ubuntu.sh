#!/usr/bin/env bash

set -e

echo "Installing required build dependencies..."
sudo apt update
sudo apt install -y ninja-build gettext cmake unzip curl build-essential 

echo "Cloning Neovim repository..."
git clone https://github.com/neovim/neovim.git --depth 1
cd neovim
echo "Building Neovim (Release)..."
make CMAKE_BUILD_TYPE=Release -j 16

echo "Installing Neovim..."
sudo make install

echo "Neovim installed from source!"
echo "Done. Run 'nvim' to start Neovim."
