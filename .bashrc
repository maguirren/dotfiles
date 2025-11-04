# Configuracion personalizada de Bash

# --- Comprobaciones básicas ---
# No continúes si no es una shell interactiva
[[ $- != *i* ]] && return


#FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_OPTS="
    --height 40%
    --reverse
    --border
    --info=inline
    --preview 'batcat --style=plain --color=always --line-range :100 {} 2>/dev/null || head -n 100 {}'
    --preview-window=right:60%
"

#BASICS
shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize
shopt -s autocd
HISTCONTROL=ignoredups:erasedups
HITSIZE=5000
HISTFILESIZE=10000

#ENVIRONMENT VARIABLES
export EDITOR=nvim
export VISUAL=$EDITOR
export PAGER=less
export BROWSER=librewolf
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export LS_COLORS='rs=0:di=01;34:ln=36:mh=00:pi=40;33'

#ALIASES
alias ll='exa -l --icons --color auto'
alias l='exa -la --icons --color auto'
alias ls='exa --icons --color auto'
alias ol='/usr/bin/ls'
alias diff='diff --color'
alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -pv'
alias nv='nvim'
alias nivm='nvim'
alias ns='nsxiv'
alias nst='nsxiv --thumbnail'
alias cat='batcat --style=plain'
alias py='python3'
alias pyvenv='python3 -m venv venv'
alias avenv='. venv/bin/activate'
alias enie='printf ñ | xclip -selection clipboard -i && echo "enie copiada al portapapeles"'

#FUNCTIONS
book(){
	nohup zathura "$1" > /dev/null 2>&1 &
}

mkcd() {
    mkdir -p "$1" && cd "$1"
}

extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1" ;;
            *.tar.gz)    tar xzf "$1" ;;
            *.bz2)       bunzip2 "$1" ;;
            *.rar)       unrar x "$1" ;;
            *.gz)        gunzip "$1" ;;
            *.tar)       tar xf "$1" ;;
            *.tbz2)      tar xjf "$1" ;;
            *.tgz)       tar xzf "$1" ;;
            *.zip)       unzip "$1" ;;
            *.Z)         uncompress "$1" ;;
            *.7z)        7z x "$1" ;;
            *)           echo "'$1' no se puede extraer con extract()" ;;
        esac
    else
        echo "'$1' no es un archivo válido"
    fi
}

#PROMPT
#PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[1m\][\[\e[0m\]\u@\h\[\e[1m\]]\[\e[0m\]-\[\e[1m\][\[\e[0m\]\w${PS1_CMD1}\[\e[1m\]]\n\[\e[0m\]󰘧 '
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='┌\[\e[1m\][\[\e[0m\]\u@\h\[\e[1m\]]\[\e[0m\]-\[\e[1m\][\[\e[0m\]\w${PS1_CMD1}\[\e[1m\]]\n\[\e[0m\]└󰘧 '

#COMPLETION
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

eval "$(fzf --bash)"
