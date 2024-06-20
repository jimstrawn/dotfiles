# personal aliases
alias cleanup='find . -type f -name "*.DS_Store" -ls -delete'

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

eval "$(/opt/homebrew/bin/mise activate zsh)"
