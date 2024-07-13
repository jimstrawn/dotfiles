export EDITOR=nvim

# personal aliases
alias ..="cd ../"
alias ...="cd ../../"
alias cd="z"
alias cleanup='find . -type f -name "*.DS_Store" -ls -delete'
alias lg="lazygit"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

eval "$(zoxide init zsh)"
eval "$(/opt/homebrew/bin/mise activate zsh)"

if [ -f ~/.zshenv_aa ]; then
    source ~/.zshenv_aa
fi

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi
