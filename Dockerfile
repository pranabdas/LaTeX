# Build command  : docker build -t latex .
# Run docker     : docker run -ti -v ${PWD}:/home latex bash

FROM opensuse/tumbleweed
RUN zypper -n update

RUN zypper -n install --no-recommends texlive-scheme-basic \
    texlive-beamer \
    texlive-microtype \
    texlive-titling \
    texlive-lastpage \
    texlive-universalis

# leave in `/home` which we can map with the host
WORKDIR /home
