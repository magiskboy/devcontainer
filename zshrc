#!/bin/zsh

export ZSH="$HOME/.oh-my-zsh"

source /root/.zsh-defer/zsh-defer.plugin.zsh

defer_plugins=(
    git
    cp
    aws
    helm
    kubectl
    yarn
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

function _load_defer_plugins() {
    for plugin in $defer_plugins; do
        if [[ -f ${ZSH_CUSTOM}/plugins/${plugin}/${plugin}.plugin.zsh ]]; then
            zsh-defer source ${ZSH_CUSTOM}/plugins/${plugin}/${plugin}.plugin.zsh
        else
            zsh-defer source ${ZSH}/plugins/${plugin}/${plugin}.plugin.zsh
        fi
    done
}

_load_defer_plugins

export ZSH_THEME="robbyrussell"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#878787"

export EDITOR="nvim"

export BAT_THEME="OneHalfLight"

export TERM="xterm-256color"

export PATH="${PATH}:/opt/neovim/bin"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init - bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval "$(zoxide init zsh)"

alias ls="lsd --icon always"
alias lt="lsd --icon always --tree"
alias vim="nvim"
alias cd="z"
