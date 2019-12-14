FROM buildenv

# Install packages for build
RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm --needed xproto

# In order to run makepkg we need to be non-root
USER build
WORKDIR /home/build

RUN git clone https://aur.archlinux.org/lndir.git /home/build/pkg
WORKDIR /home/build/pkg

RUN makepkg -sfc --noconfirm && mkdir /home/build/output && cp *.pkg.tar.xz /home/build/output
