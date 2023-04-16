FROM buildenv

RUN git clone https://aur.archlinux.org/snapraid.git /home/build/pkg
WORKDIR /home/build/pkg

RUN makepkg -sfc --noconfirm && mkdir /home/build/output && cp *.pkg.tar.* /home/build/output
