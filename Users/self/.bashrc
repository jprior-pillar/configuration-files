#!!!disabled to work on MacBook # Source global definitions
#!!!disabled to work on MacBook if [ -f /etc/bashrc ]; then
#!!!disabled to work on MacBook         echo november
#!!!disabled to work on MacBook 	. /etc/bashrc
#!!!disabled to work on MacBook         echo oscar
#!!!disabled to work on MacBook fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# HISTCONTROL=ignoreboth
# HISTCONTROL=ignoredups:ignorespace
unset HISTCONTROL
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTTIMEFORMAT="%F %T "
export HISTCONTROL
export HISTFILESIZE
export HISTSIZE

append_to_path () {
    for d in "$@"; do
        if echo "${PATH}" | tr ':' '\n' | grep -q "^${d}$" -; then
            :
        else
            PATH="${PATH}${PATH+:}${d}"
        fi
    done
}
append_to_path "${HOME}/bin"

set -o vi
alias ll='ls -l'
alias lll='ls -l --full-time' ;# good on linux, but not macos
alias lll='ls -l -T' ;# lame bsd
alias ltr='ls -l -t -r'
export LINES
export COLUMNS
# EDITOR value is for git.
EDITOR=vim
export EDITOR
# PAGER is convenient for wide queries in psql.
PAGER='less -FRSX'
export PAGER
alias c='calendar -A 7 -B 2'
alias c='calendar -A 7'
alias c='cal | grep -v "^ *$";calendar -A 7'
alias d='date --iso-8601=ns'
alias gl='git lg'
alias gla='git lg --all'
alias gl1='git lg --all -10'
alias gl2='git lg --all -20'
alias gl3='git lg --all -30'
alias gl4='git lg --all -40'
alias gl5='git lg --all -50'
alias gll='git lg --all --color=always | less -FRSX'
alias gd='git difftool -t meld'
alias gy='git difftool -t meld -y'
alias fa='git fetch --all'

# umask '0277'
umask '0057'
# PS1='\h:\W \u\$ ' # original
PS1='\u@\h:\w\$ '
export PS1
