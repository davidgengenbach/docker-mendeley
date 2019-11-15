#!/usr/bin/env bash

set -e

docker build -t mendeley .

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth

xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

docker \
  run \
  -ti \
  -v $XSOCK:$XSOCK \
  -v $XAUTH:$XAUTH \
  -e XAUTHORITY=$XAUTH \
  -e DISPLAY=$DISPLAY \
  mendeley
