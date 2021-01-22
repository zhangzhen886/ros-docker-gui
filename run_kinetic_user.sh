docker run -it --runtime=nvidia --privileged --net=host --ipc=host \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    -v $HOME/.Xauthority:/home/$(id -un)/.Xauthority -e XAUTHORITY=/home/$(id -un)/.Xauthority \
    -v $HOME/.ssh:/root/.ssh \
    -e DOCKER_USER_NAME=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_USER_GROUP_NAME=$(id -gn) \
    -e DOCKER_USER_GROUP_ID=$(id -g) \
    -e ROS_IP=127.0.0.1 \
    -v $HOME/workspaces:/home/$(id -un)/workspaces \
    -v $HOME/clion-2020.3.1:/home/$(id -un)/clion-2020.3.1 \
    turlucode/ros-kinetic:nvidia
