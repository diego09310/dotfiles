# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
if [[ -f "$HOME/.path" ]]; then
    source $HOME/.path
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

source $HOME/.aliases
unsetopt BEEP
unsetopt histverify


export NVM_DIR="$HOME/.nvm"
export EDITOR=/usr/local/bin/nvim
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
