FROM ubuntu:12.04

COPY diffmerge_4.2.0.697.stable_amd64.deb .

RUN \ 
  dpkg --force-depends -i diffmerge_4.2.0.697.stable_amd64.deb && \
  apt-get update && \
  apt-get -y install -f --no-install-recommends \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT diffmerge
