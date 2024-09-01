# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
if [[ -f "$HOME/.path" ]]; then
    source $HOME/.path
fi

export EDITOR='nvim'
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"
plugins=(git)
unsetopt BEEP
unsetopt histverify

source $ZSH/oh-my-zsh.sh
source $HOME/.omz_prompt

source $HOME/.aliases

if [[ -f "$HOME/.zshrc_extras" ]]; then
    source $HOME/.zshrc_extras
fi

