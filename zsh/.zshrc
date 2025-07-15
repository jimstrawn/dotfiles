
autoload -Uz compinit && compinit

eval "$(zoxide init zsh)"

eval "$(oh-my-posh init zsh --config ~/.config/poshthemes/jims.omp.toml)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

# Aliases
alias fcd='cd $(fd -t d | fzf)'
alias fvim='nvim $(fzf)'
alias fkill='ps aux | fzf | awk "{print \$2}" | xargs kill'
alias fbat='bat $(fzf)'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/jim/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
