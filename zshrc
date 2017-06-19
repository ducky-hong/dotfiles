# prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
        source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

[ -f /usr/local/etc/profile.d/z.sh ] && source /usr/local/etc/profile.d/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f "${HOME}/.iterm2_shell_integration.zsh" ] && source "${HOME}/.iterm2_shell_integration.zsh"

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR="nvim"

if [[ $(uname) == "Darwin" ]]; then
        alias ctags=$(brew --prefix)/bin/ctags
fi

alias vim=$(which nvim)
alias jest='nocorrect jest '

export PATH=$PATH:"./node_modules/.bin"
export PATH=$PATH:"$(python3 -m site --user-base)/bin"
export PATH=$PATH:"$HOME/.yarn/bin"
