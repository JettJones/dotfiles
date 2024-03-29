# overrides I use for bash on windows
export PS1="\]\e[1;35m\w\e[0m\]\n\$ "
export PATH=$PATH:"/c/Program Files/Git/bin"

alias kp="start /c/scripts/KeePass2.34/KeePass.exe"
alias e="/c/Program\ Files/Emacs/x86_64/bin/runemacs.exe"

# more generic aliases and shortcuts
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

alias apply="source ~/.bashrc"

d-rmi() {
    # remove untagged images
    docker images -q -f dangling=true | xargs --no-run-if-empty docker rmi
}

d-rm() {
    # remove exited containers
    docker ps -f status=exited -q | xargs --no-run-if-empty docker rm
}

d-rmv() {
    # remove unused volumes
    docker volume ls -q -f dangling=true | grep -v _ | xargs --no-run-if-empty docker volume rm
}

d-exec() {
    local arg1=${2:-bash}
    docker exec -ti $(docker ps -qf name=$1) $arg1
}


ds-restart() {
    docker service update --env-add "RESTART=$(date)" $1
}

if [[ -f ~/.bashrc.local ]]; then
    echo "import local";
    source ~/.bashrc.local
else
    echo "no local";
fi
