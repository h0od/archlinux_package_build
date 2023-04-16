FROM buildenv

RUN git clone https://aur.archlinux.org/shorewall.git /home/build/pkg
WORKDIR /home/build/pkg

RUN makepkg -sfc --noconfirm && mkdir /home/build/output && cp *.pkg.tar.* /home/build/output
