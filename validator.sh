#!/bin/bash

# List of executables to check
executables=(
    "brew"
    "python"
    "zsh"
    "nvim"
    "git"
    "git-lfs"
    "curl"
    "ssh"
    "make"
    "rsync"
    "rustup"
    "node"
    "npm"
)

# Iterate over the list and check if each executable is installed and in the PATH
for exe in "${executables[@]}"; do
    if ! command -v "$exe" &> /dev/null; then
        echo "Error: $exe not found in PATH."
        exit 1
    fi
done

echo "All executables found in PATH."
