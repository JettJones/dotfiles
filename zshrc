export PROMPT="%(?.%F{green}√%f.%F{yellow}?%?%f) %# "
export RPROMPT="%F{245}%~%f"

alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

alias apply="source ~/.zshrc"

d-exec() {
    local name=$1
    shift
    docker exec -ti $(docker ps -qf name=$name) ${@:-bash}
}

d-logs() {
    local name=$1
    docker logs --tail 100 $(docker ps -qf name=$name)
}

# load local file
if [[ -f ~/.zshrc.local ]]; then
    echo "local exists";
    source ~/.zshrc.local
else
    echo "no local";
fi
