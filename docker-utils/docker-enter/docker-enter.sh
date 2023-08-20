#!/bin/bash

docker-enter() {

    PID=$(docker inspect --format \{{.State.Pid\}} "${1}")
    docker run -it --privileged --pid=host debian nsenter --target "${PID}" --mount --uts --ipc --net --pid
}
