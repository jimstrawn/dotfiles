
# personal aliases
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

