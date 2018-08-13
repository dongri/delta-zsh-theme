# delta.zsh-theme
# Repo: https://github.com/dongri/delta.zsh-theme
# Direct Link: https://github.com/dongri/delta-zsh-theme/blob/master/delta.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[118]δ $FG[032]%c\
$(git_prompt_info)$(virtualenv_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) \
$my_gray%(!.#.➤)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# color vars
eval my_gray='$FG[008]'
eval my_orange='$FG[214]'

# right prompt
# if type "virtualenv_prompt_info" > /dev/null
# then
# 	# RPROMPT='$(virtualenv_prompt_info)$my_gray%n@%m%{$reset_color%}%'
#   # RPROMPT='$(virtualenv_prompt_info)$my_gray%~%{$reset_color%}%'
#   RPROMPT='$(virtualenv_prompt_info)$my_gray%*%{$reset_color%}%'
# else
# 	# RPROMPT='$my_gray%n@%m%{$reset_color%}%'
#   # RPROMPT='$my_gray%~%{$reset_color%}%'
#   RPROMPT='$my_gray%*%{$reset_color%}%'
# fi

# git settings
GIT_DIRTY_COLOR=$FG[133]
GIT_CLEAN_COLOR=$FG[118]
GIT_PROMPT_INFO=$FG[012]

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$GIT_CLEAN_COLOR%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}x%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}>%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}=%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}?%{$reset_color%}"
