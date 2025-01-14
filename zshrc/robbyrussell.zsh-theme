PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

virtualenv_info() {
  if [[ -n "VIRTUAL_ENV" ]]; then
    local venv_prompt_name=$(basename "$VIRTUAL_ENV")
    if [[ -n "$VIRTUAL_ENV_PROMPT" ]]; then
      echo "($VIRTUAL_ENV_PROMPT) "
    else
      echo "($venv_prompt_name) "
    fi
  fi
}

PROMPT+='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}%'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
