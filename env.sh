#!/usr/bin/env bash

# folder for startup files
export DOTFILES=$HOME/.dotfiles

# make vim the default editor.
export EDITOR='vim';

# keep showing man page after exit
export MANPAGER='less -X';

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';

# prefer US English, fr for locales and use UTF-8
export LANG="en_US.UTF-8"
export LANGUAGE=
export LC_CTYPE="en_US.UTF-8"
export LC_NUMERIC="fr_FR.UTF-8"
export LC_TIME="fr_FR.UTF-8"
export LC_COLLATE="fr_FR.UTF-8"
export LC_MONETARY="fr_FR.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_PAPER="fr_FR.UTF-8"
export LC_NAME="fr_FR.UTF-8"
export LC_ADDRESS="fr_FR.UTF-8"
export LC_TELEPHONE="fr_FR.UTF-8"
export LC_MEASUREMENT="fr_FR.UTF-8"
export LC_IDENTIFICATION="fr_FR.UTF-8"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
