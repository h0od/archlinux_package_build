FROM archlinux:base-devel

RUN pacman -Sy --noconfirm --needed base-devel sudo git vim bash-completion bash

# Add user and add to wheel. Make sure we can sudo without password
RUN useradd -Um build \
    && usermod -aG wheel build \ 
    && sed -i '/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/s/^#\s//g' /etc/sudoers

USER build
WORKDIR /home/build

