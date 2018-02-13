# delta.zsh-theme
# Repo: https://github.com/dongri/delta.zsh-theme
# Direct Link: https://github.com/dongri/delta-zsh-theme/blob/master/delta.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[118]δ $FG[032]%c\
$(git_prompt_info) \
$FG[105]%(!.#.➤)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# color vars
eval my_gray='$FG[008]'
eval my_orange='$FG[214]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	# RPROMPT='$(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
  RPROMPT='$(virtualenv_prompt_info)$my_gray%~%{$reset_color%}%'
else
	# RPROMPT='$my_gray%n@%m%{$reset_color%}%'
  RPROMPT='$my_gray%~%{$reset_color%}%'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
