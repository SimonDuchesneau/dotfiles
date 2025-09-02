#
# ~/.bashrc
#

# If not running interactively, don't do anything
echo "Bonjour $USER!"
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsl='ls -l'
alias lsa='ls -a'
alias lsla='ls -la'
alias c='clear'
alias e='exit'
alias grep='grep --color=auto'
alias grepc='GREP_COLORS="mt=01;31" grep --color=always'
PS1='\W\$ '

vscodeNewFile() {
    local nomFichier="$1"

    if [ -z "$nomFichier" ]; then
        return 1
    fi

    if [ ! -f "$nomFichier" ]; then
        touch "$nomFichier"
    fi

    code "$nomFichier"
}

mygrep() {
    grep -i --color=always "$1" "${@:2}"
}

export PATH=$HOME/bin:$PATH