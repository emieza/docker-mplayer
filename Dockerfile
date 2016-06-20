FROM library/debian
MAINTAINER Enric Mieza <emieza@xtec.cat>

RUN apt-get update && \
apt-get install -y mplayer && \
apt-get clean && apt-get autoclean && \
rm -rf /var/lib/apt/lists/*
VOLUME ["musix:/vol1"]
ENTRYPOINT ["/usr/bin/mplayer","$1"]

