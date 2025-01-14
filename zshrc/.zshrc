# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git direnv)

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# PSQL
export PATH="/usr/local/bin/psql/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# virtualenv
eval "$(pyenv virtualenv-init -)"

# EZA
export PATH="/usr/local/bin/eza/bin:$PATH"
export FPATH="/usr/local/bin/eza/completions/zsh:$FPATH"

# Aliases
# For a full list of active aliases, run `alias`.
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"

alias v=nvim

alias vz="nvim ~/.zshrc"
alias sz="source ~/.zshrc"

alias cdv="cd ~/.config/nvim"
alias vl="nvim ~/.config/nvim/lua/plugins/lazy.lua"

alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

eval "$(direnv hook zsh)"
