FROM clickable/amd64-20.04-amd64

RUN echo set debconf/frontend Noninteractive | debconf-communicate && echo set debconf/priority critical | debconf-communicate
RUN apt-get update && apt-get install -y --force-yes --no-install-recommends python3-pip:amd64 && apt-get clean