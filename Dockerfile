FROM archlinux/archlinux:latest

# Update system packages
RUN pacman -Syyu --noconfirm

# Install MuseScore
RUN pacman -U --noconfirm https://archive.archlinux.org/packages/m/musescore/musescore-4.4.4-4-x86_64.pkg.tar.zst

# Set environment variable to run MuseScore in headless mode
ENV QT_QPA_PLATFORM=offscreen
