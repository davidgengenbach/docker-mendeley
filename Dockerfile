FROM ubuntu:18.04

ARG VERSION=1.19.6
ARG FILENAME=mendeleydesktop_${VERSION}-stable_amd64.deb
ARG URL=https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/${FILENAME}

ENV QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb
ENV DISPLAY :0

RUN apt-get update && \
  apt-get install -qqy \
    wget \
    x11-apps \
    python \
    gconf2 \
    desktop-file-utils \
    libgl1-mesa-glx \
    libegl1-mesa \
    libnss3 \
    libxcomposite1 \
    libxi6 \
    libxtst6 \
    libxrandr2 \
    libasound2

RUN wget --quiet ${URL} && \
    dpkg -i ${FILENAME} && \
    apt-get -qqy install -f

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /usr/share/X11/xkb

CMD mendeleydesktop