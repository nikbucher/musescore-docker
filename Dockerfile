FROM archlinux:latest

# update
RUN pacman -Syyu --noconfirm

RUN pacman -U --noconfirm https://archive.archlinux.org/packages/m/musescore/musescore-4.0.2-2-x86_64.pkg.tar.zst

ENV QT_QPA_PLATFORM=offscreen
