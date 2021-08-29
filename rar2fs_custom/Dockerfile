FROM buildenv

RUN mkdir /home/build/pkg
COPY ./PKGBUILD /home/build/pkg
WORKDIR /home/build/pkg

# Generate new checksums
RUN makepkg -g -f -p PKGBUILD 

RUN sudo pacman -S --noconfirm --needed fuse2
RUN cat PKGBUILD && makepkg -sfc --noconfirm && mkdir /home/build/output && cp *.pkg.tar.* /home/build/output
