# Mendeley: Docker

:warning: **Work in progress!** :warning:

You do not want to install Mendeley on your host-system because you are:
- paranoid
- do not want to clutter your system?

Then this is for you!

```shell
./run.sh
```

## Description
Runs Mendeley inside a light-weight Debian - enabling X-Forwarding.

## Alternatives
[ljishen/mendeley Docker](https://hub.docker.com/r/ljishen/mendeley) uses an rather heavyweight `dorowu/ubuntu-desktop-lxde-vnc` and runs a VNC server.
Also, a VNC client is needed and needs to be manually connected.