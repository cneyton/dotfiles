#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles

echo -e "\\nInitializing vim plugins"
echo "=============================="

if [ ! -d "$HOME/.vim/bundle" ]; then
    echo "Creating ~/.vim/bundle"
    mkdir -p "$HOME/.vim/bundle"
fi

ln -s $DOTFILES/Vundle.vim $HOME/.vim/bundle/Vundle.vim

vim +PluginInstall +qall


echo "Installing YouCompleteMe"
python3 $HOME/.vim/bundle/YouCompleteMe/install.py --clangd-completer
