# Build command  : docker build -t latex -f ubuntu.dockerfile .
# Run docker     : docker run -ti -v ${PWD}:/home --rm latex bash

FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update --fix-missing; apt upgrade -yq; \
  apt install -yq --no-install-recommends \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-science \
    texlive-pictures \
    texlive-luatex \
    texinfo \
    python3 \
    python3-pygments && \

# cleanups
  apt autoremove --purge && \
  rm -rf /var/lib/apt/lists/*

# we can map `/home` directory with the host
WORKDIR /home
