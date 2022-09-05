{ config, pkgs, lib,... }: {
  imports = [
    ../common
    ../../../../packages/linux/gui
    ../../../../programs/linux/gui
    ./dconf.nix
    ./flatpak.nix
  ];
}
