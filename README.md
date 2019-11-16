# Docker: Mendeley

[![DockerHub](https://img.shields.io/badge/DockerHub-success?style=for-the-badge&logo=docker)](https://hub.docker.com/r/davidgengenbach/mendeley-desktop)

You do not want to install Mendeley on your host-system because you are:
- paranoid
- do not want to clutter your system?

Then this is for you!

:warning: **Important: If you want to have persistent configuration, please clone the Github repo as described below!** :warning:

```shell
git clone --depth 1 https://github.com/davidgengenbach/docker-mendeley.git
cd docker-mendeley

# (Only needed if you want to build the image yourself) Execute once
./build.sh

./run.sh
```

## Description
- Runs Mendeley inside an Ubuntu - enabling X-Forwarding.
- Configuration/login data persists
  - delete the `.config` and `.local` folders when you want to prevent this
- Automatically mounts the `pdfs` folder
  - Has to be configured (once) in the Mendeley options
  - `/pdfs/watched`
    - put your PDFs in here and configure the watcher
  - `/pdfs/organized`
    - configure your Mendeley to organize your PDFs in here 


## Alternatives

### [ljishen/mendeley Docker](https://hub.docker.com/r/ljishen/mendeley)

Uses an rather heavyweight `dorowu/ubuntu-desktop-lxde-vnc` and runs a VNC server.
Also, a VNC client is needed and needs to be manually connected.

### Mendeley Online

Nice alternative - (but) online

Does not have auto-sync of folders + I do not want to upload PDFs to Mendeley since they may be... 

### Zotero

Might be a better candidate since the developers are financially independent (Mendeley is by Elsivier...).

Unfortunately it does not have the same functionality of Mendeley.

## License

I am not entirely sure what license is applicable when using Mendeley Desktop. If you know, please let me know through an issue or pull request!