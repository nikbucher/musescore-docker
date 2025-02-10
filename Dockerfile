FROM archlinux/archlinux:latest

# Update system packages
RUN pacman -Syyu --noconfirm

# Install MuseScore
# RUN pacman -U --noconfirm https://archive.archlinux.org/packages/m/musescore/musescore-4.4.4-4-x86_64.pkg.tar.zst
RUN pacman -U --noconfirm https://geo.mirror.pkgbuild.com/extra-testing/os/x86_64/musescore-4.5.2-1-x86_64.pkg.tar.zst

# Set environment variable to run MuseScore in headless mode
ENV QT_QPA_PLATFORM=offscreen
