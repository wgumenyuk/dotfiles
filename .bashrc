# Shell Options
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

# History
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PS1='\[\e[97m\]┌─\[\e[0m\] `if [[ ! -z $VIRTUAL_ENV ]]; then echo -n "\[\e[97m\]( $(basename $VIRTUAL_ENV))\[\e[0m\] "; fi`\[\e[92m\]\u@\H \[\e[94m\]\w\[\e[0m\]`export GIT=$(git branch --show-current 2> /dev/null); if [[ ! -z $GIT ]]; then echo -n "\[\e[97m\] (󰘬 $GIT)\[\e[0m\]"; fi`\n\[\e[97m\]└─\[\e[0m\] \\$ '

# Aliases
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

# PNPM
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Go
export PATH="$PATH:/usr/local/go/bin"

# Binaries
export PATH="$HOME/bin:$PATH"
