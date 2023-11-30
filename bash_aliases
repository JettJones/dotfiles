
export PATH=$PATH:~/bin

# short paths up the directory tree
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

# reload changes
alias apply="source ~/.bash_aliases"


# a space for specific overrides that are not checked in.
if [[ -f ~/.bash_aliases.local ]]; then
    echo "import local";
    source ~/.bash_aliases.local
else
    echo "no local";
fi
