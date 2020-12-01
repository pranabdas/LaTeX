# Build command  : docker build -t latex .
# Run docker     : docker run -ti -v ${pwd}:/home latex bash

FROM ubuntu:focal

RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND='noninteractive' apt install -y texlive-science \
    texlive-latex-extra --no-install-recommends

# leave in `/home` which we can map with the host
WORKDIR /home
