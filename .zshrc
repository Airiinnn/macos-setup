# Default editor and terminal bindings
export EDITOR="/usr/bin/vim"
bindkey -v

# Aliases
alias ls='gls --color -h --group-directories-first'
alias ssh="kitten ssh"

## Scala
alias fbt="sbt scalafmtAll clean scalafmtCheckAll smoke:test coverage it:test test coverageReport"
alias dcup="docker compose -f cicd/docker-compose.yml up -d"
alias dcdown="docker compose -f cicd/docker-compose.yml down -v"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ai/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ai/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ai/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ai/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# PostgreSQL
export PATH="/Library/PostgreSQL/16/bin:$PATH"

# Oh My Posh
# eval "$(oh-my-posh init zsh --config /Users/ai/.config/oh-my-posh/catppuccin-ai.omp.json)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/catppuccin_mocha_ai.omp.json)"

# SDKMAN!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# KMonad
export PATH="/Users/ai/.local/bin:$PATH"

# Zsh plugins
ZSH_AUTOSUGGEST_STRATEGY=completion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
