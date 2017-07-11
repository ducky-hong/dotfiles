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

if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
        curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if ! type "brew" > /dev/null; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/zshrc ~/.zshrc

# kwm
ln -sf $(pwd)/khdrc ~/.khdrc
mkdir -p ~/.kwm && ln -sf $(pwd)/kwmrc ~/.kwm/kwmrc

# nvim rc
mkdir -p $HOME/.config/nvim && ln -sf ~/.vimrc $HOME/.config/nvim/init.vim
