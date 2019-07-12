#!/usr/bin/env bash

echo -e "\\n\\nInstalling packages..."
echo "=============================="

formulas=(
    git
    grep
    markdown
    silversearcher-ag
    tmux
    tree
    wget
    vim
    htop
    cmake
    exuberant-ctags
    build-essential
    python3-dev
)

for formula in "${formulas[@]}"; do
    if dpkg -l "$formula" > /dev/null 2>&1; then
        echo "$formula already installed... skipping."
    else
        echo "installing $formula..."
        sudo apt install "$formula" > /dev/null 2>&1
    fi
done
