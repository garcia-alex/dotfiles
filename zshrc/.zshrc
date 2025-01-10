# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alessandrogarcia/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alessandrogarcia/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alessandrogarcia/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alessandrogarcia/google-cloud-sdk/completion.zsh.inc'; fi
