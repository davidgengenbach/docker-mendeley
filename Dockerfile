FROM debian

ARG VERSION=1.19.4
ARG FILENAME=mendeleydesktop_${VERSION}-stable_amd64.deb

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

RUN wget https://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/${FILENAME}

RUN dpkg -i ${FILENAME}
RUN apt-get -qqy install -f

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV DISPLAY :0
CMD mendeleydesktop