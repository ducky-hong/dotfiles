#!/usr/bin/env bash

set -e

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
        git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

if [ ! -d "~/.config/base16-shell" ]; then
        git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/zshrc ~/.zshrc
