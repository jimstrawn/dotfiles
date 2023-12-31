export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_THEME="robbyrussell"

plugins=(git jump)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

eval export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

alias j=jump
