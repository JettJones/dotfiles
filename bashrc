
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


d-ntp() {
    # fix local boot2docker time after resume
    # https://gist.github.com/mmcc/bfd052a12fdd82f76161
    docker-machine ssh $DOCKER_MACHINE_NAME -- sudo killall -9 ntpd
    docker-machine ssh $DOCKER_MACHINE_NAME -- sudo ntpclient -s -h pool.ntp.org
    docker-machine ssh $DOCKER_MACHINE_NAME -- sudo ntpd -p pool.ntp.org && date
}

ds-restart() {
    docker service update --env-add "RESTART=$(date)" $1
}
