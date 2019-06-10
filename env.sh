#!/bin bash


# Make vim the default editor.
export EDITOR='vim';

# Keep showing man page after exit
export MANPAGER='less -X';


# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=100000
export HISTFILESIZE=100000
# append to the history file, don't overwrite it
shopt -s histappend


# Prefer US English, fr for locales and use UTF-8
export LC_ALL="fr_FR.UTF-8"
export LANG="en_US"


# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar


# Autocorrect typos in path names when using `cd`
shopt -s cdspell


# Do not autocomplete when accidentally pressing Tab on an empty line.
shopt -s no_empty_cmd_completion


# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
