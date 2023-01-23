#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/apt.sh
source install/link.sh
source install/vim.sh

echo "Done. Reload your terminal."
