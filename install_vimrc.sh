#!/usr/bin/env bash

# Update submodules to get Vundle
git submodule update --recursive --init --quiet

VIMRC_FILE="${HOME}/.vimrc"
VIM_DIR="${HOME}/.vim"
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [[ -e $VIMRC_FILE ]]; then
    echo ".vimrc already existing, please remove it."
else
    ln -sv $CURRENT_DIR/vimrc $VIMRC_FILE
fi

if [[ -e $VIM_DIR ]]; then
    echo ".vim directory already existing, please remove it."
else
    ln -sv $CURRENT_DIR/vim $VIM_DIR
fi
