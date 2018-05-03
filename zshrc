#!/bin/bash

function source_if_exists() {
  [[ -s $1 ]] && source "$1"
}

source_if_exists "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source_if_exists '/usr/local/etc/profile.d/z.sh'
source_if_exists "$HOME/.fzf.zsh"
source_if_exists '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source_if_exists '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source_if_exists '/usr/local/opt/chruby/share/chruby/chruby.sh'
[[ -n $(command -v chruby) ]] && chruby 2.5.1

export EDITOR="vim"

alias jest='nocorrect jest '
alias k="$(which kubectl)"
alias ctags="$(brew --prefix)/bin/ctags"

export PATH=$PATH:"./node_modules/.bin"
export PATH=$PATH:"$(python3 -m site --user-base)/bin"
export PATH=$PATH:"$HOME/.yarn/bin"
export PATH=$PATH:"$HOME/bin"
export PATH="/usr/local/opt/python/libexec/bin":$PATH

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
