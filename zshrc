if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
        source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

[ -f /usr/local/etc/profile.d/z.sh ] && source /usr/local/etc/profile.d/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc ] && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc ] && source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

export EDITOR="vim"

alias jest='nocorrect jest '
alias k=$(which kubectl)
alias ctags=$(brew --prefix)/bin/ctags

export PATH=$PATH:"./node_modules/.bin"
export PATH=$PATH:"$(python3 -m site --user-base)/bin"
export PATH=$PATH:"$HOME/.yarn/bin"
export PATH=$PATH:"$HOME/bin"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
