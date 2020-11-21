# Alias management
alias resource="source ~/.bashrc"
alias aliases="vim ~/.bash_aliases; resource;"
alias echopath="echo '$PATH' | sed 's/:/\n/g'"

# Listing
alias lsa="ls -Aoh $@"
alias lsc="clear; pwd; lsa"
function lsd() { pwd; ls -aoh $@ | grep ^d; }
function lsf() { lsa $@ | grep ^-; }

# Navigation
alias cdc="cd ~/Documents/Code/; lsc;"
alias cdg="cd ~/Documents/Games; lsc;"
alias cdd="cd ~/Downloads; lsc -t;"
alias cdp='cd ~/Documents/Work/Projects; lsc;'
function cdl() {
    echo "c: ~/Documents/Code/";
    echo "g: ~/Documents/Games/";
    echo "d: ~/Downloads";
    echo "p: ~/Documents/Work/Projects/";
    }

# Git
alias ga="git add $@"
alias gc="git commit -m $@"
alias gl="git log $@"
alias gs="git status $@"
alias gca="git commit -am $@"
alias gitb="git branch $@"

# Programs
alias python="winpty /c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/Shared/Python37_64/python.exe $@"
alias py="python $@"

alias tmuxa="tmux attach-session";

