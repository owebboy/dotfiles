#!/usr/bin/env bash

# Check if Homebrew is installed, exit if not
if ! command -v brew &> /dev/null; then
    echo "Error: Homebrew is not installed. Please install it first."
    exit 1
fi

# Install required packages using Homebrew
brew install python zsh neovim git git-lfs curl openssh make rsync rustup-init

# Install Volta and use it to install the latest version of Node.js
curl https://get.volta.sh | bash

volta setup

source $HOME/.volta/bin

volta install node@latest

# Update Python pip to the latest version
pip install --upgrade pip

# Install Rust using rustup
rustup-init -y
source $HOME/.cargo/env

echo "Packages installed successfully."
