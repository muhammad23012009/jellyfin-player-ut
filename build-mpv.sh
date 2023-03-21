#!/bin/bash

export PATH=./.clickable/home/.local/bin:$PATH
git clone https://github.com/mpv-player/mpv-build.git
cd mpv-build
./.clickable/home/.local/bin/meson --version
echo -Dlibmpv=true > mpv_options
echo -Dpipewire=disabled >> mpv_options # hopefully temporary
./rebuild -j4
./install
ln -s /usr/local/lib/${ARCH_TRIPLET}/libmpv.so /usr/local/lib/${ARCH_TRIPLET}/libmpv.so.1
ln -sf /usr/local/lib/${ARCH_TRIPLET}/libmpv.so /usr/local/lib/libmpv.so.2
