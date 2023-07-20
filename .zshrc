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

# jEnv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Oh My Posh
eval "$(oh-my-posh init zsh --config /Users/ai/.config/oh-my-posh/catppuccin-ai.omp.json)"
