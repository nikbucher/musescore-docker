FROM archlinux:latest

# update
RUN pacman -Syyu --noconfirm

# Disable Signature Verification
# because this does not work: RUN pacman -S --noconfirm archlinux-keyring && pacman-key --refresh-keys
RUN echo 'SigLevel = Never' >> /etc/pacman.conf

RUN pacman -U --noconfirm https://archive.archlinux.org/packages/p/portmidi/portmidi-236-1-x86_64.pkg.tar.zst
RUN pacman -U --noconfirm https://archive.archlinux.org/packages/m/musescore/musescore-3.6.2-7-x86_64.pkg.tar.zst

# Re-enable Signature Verification
RUN sed -i '$d' /etc/pacman.conf

ENV QT_QPA_PLATFORM=offscreen
