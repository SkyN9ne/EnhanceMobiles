# My personal config for Termux 
# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

export HISTSIZE=100
export HISTFILESIZE=1000

export EDITOR='nano'
export VISUAL='nano'

# colorized grep(s)
export GREP_COLORS='mt=1;32'

shopt -s globstar
shopt -s checkwinsize

shopt -s extglob

# set up some aliases
alias cl='clear'

alias aptu='apt update'
alias aptfu='apt full-upgrade'
alias apti='apt install'
alias apts='apt search'

alias la='ls -aLF --group-directories-first --color=auto'
alias ll='ls -lGF --group-directories-first --color=auto'
alias ls='ls -A --color=auto'
alias l='ls -CF --group-directories-first --color=auto'

alias untar='tar -zxvf'

alias lsc='ls -A --color=auto | cat -n'
alias lsn='ls -A --color=auto | cat -n'

alias md='mkdir -p -v'
alias mkdir='mkdir -p'

alias rd='rm -rf'
alias rmdir='rm -rf'

alias tcr='termux-change-repo'
alias tfs='termux-fix-shebang'
alias open='termux-open'

# colorize man pages
export MANPAGER="less -R --use-color -Dd+g -Du+b"

export USER="skymux"
export USERNAME='sky'

export ETC="/data/data/com.termux/files/usr/etc"

export BAT_THEME="Monokai Extended Origin"
alias bat='bat --theme="Monokai Extended Origin" --wrap=never'

#bind 'TAB:menu-complete'

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0;31m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion

export LS_COLORS="$(vivid generate molokai)"


alias nxo='nano --stateflags --autoindent --tabstospaces --indicator --showcursor --constantshow -l'

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 2>/dev/null ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

alias lsd='lsd -aF --hyperlink=auto --group-directories-first --icon=never --color=auto'

alias grep='grep --color=always'
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'

alias diff='diff --color=auto'
alias ip='ip -color -pretty'

alias dir='dir --group-directories-first --indicator-style=slash --color=auto'
alias vdir='vdir -GF --group-directories-first --indicator-style=slash --color=auto'

alias startubuntu='proot-distro login ubuntu'


alias npms='npm search'
alias npmu='npm update'
alias npmaf='npm audit fix'
alias npmis='npm install --save'
alias npma='npm audit'
alias npmig='npm install -g'

alias gitc='git clone --recursive'
