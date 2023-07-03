{ config, pkgs, lib,... }: {
  imports = [
    ../common
    ../../../../packages/linux/gui
    ../../../../packages/linux/music
    ../../../../programs/linux/gui
    ./dconf.nix
    ./flatpak.nix
  ];
  systemd.user.startServices = "sd-switch";
}
