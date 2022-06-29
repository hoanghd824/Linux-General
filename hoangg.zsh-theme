# Based on bira and gnzh theme
#%B%F{green}λ
#♥λ«»±˖˗‑‐‒ ━ ✚‐↔←↑↓→↭⇎⇔⋆━◂▸◄►◆☀★☗☊✔✖❮❯⚑⚙ ⎈
setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # is normal user
  PR_USER='%B%F{cyan}%n%f %B%F{cyan}♥'
  PR_USER_OP='%B%F{cyan}%#%f'
  PR_PROMPT='%f➤%f'
else # is root
  PR_USER='%B%F{red}%n%f %B%F{red}λ'
  PR_USER_OP='%B%F{red}%#%f'
  PR_PROMPT='%f➤%f'
fi

# Check if we are on SSH or not
#if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
#  PR_HOST='%B%F{red}%M%f' # SSH
#else
#  PR_HOST='%B%F{green}%M%f' # no SSH
#fi


local return_code="%(?..%B%F{red}%? ↵%{$reset_color%})"
local user_host="${PR_USER}" #%F{white}@${PR_HOST}"
local current_dir="%B%F{green}%~%f%b"
local git_branch='$(git_prompt_info)'
PROMPT="╭─${user_host} ${current_dir} \$(ruby_prompt_info) ${git_branch}
╰─$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{yellow}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %f"
ZSH_THEME_RUBY_PROMPT_PREFIX="%B%F{red}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%f"

}
