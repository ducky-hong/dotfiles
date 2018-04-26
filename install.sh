#!/usr/bin/env bash

set -e

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
        git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

if [ ! -d "$HOME/.config/base16-shell" ]; then
        git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

if ! type "brew" > /dev/null; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/zshrc ~/.zshrc

# chunkwm
ln -sf $(pwd)/skhdrc ~/.skhdrc
ln -sf $(pwd)/chunkwmrc ~/.chunkwmrc
