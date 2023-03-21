FROM clickable/amd64-20.04-amd64

RUN echo set debconf/frontend Noninteractive | debconf-communicate && echo set debconf/priority critical | debconf-communicate
RUN apt-get update && apt-get install -y --force-yes --no-install-recommends libgles2 wget git:amd64 qtwebengine5-dev:amd64 qtquickcontrols2-5-dev:amd64 libqt5x11extras5-dev:amd64 libcec-dev:amd64 qml-module-qtquick-controls:amd64 qml-module-qtwebengine:amd64 qml-module-qtwebchannel:amd64 qtbase5-private-dev:amd64 curl:amd64 unzip:amd64 && apt-get clean