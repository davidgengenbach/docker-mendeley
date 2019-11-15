#!/usr/bin/env bash

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth

MENDELEY_DATA_DIR=".local/share/data/Mendeley Ltd./Mendeley Desktop/"

docker \
  run \
  -ti \
  -v $XSOCK:$XSOCK \
  -v $XAUTH:$XAUTH \
  -v $(pwd)/pdfs:/pdfs \
  -v "$(pwd)/.config":/root/.config \
  -v "$(pwd)/${MENDELEY_DATA_DIR}":"/root/${MENDELEY_DATA_DIR}" \
  -e XAUTHORITY=$XAUTH \
  -e DISPLAY=$DISPLAY \
  mendeley
