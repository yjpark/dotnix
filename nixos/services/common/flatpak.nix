{ config, pkgs, ... }: {
  services.flatpak.enable = true;
  # https://flatpak.org/setup/NixOS
  # flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}
