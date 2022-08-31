{ config, pkgs, ... }: {
  imports = [
    ../../../packages/linux
    ../../../programs/linux
    ./dconf.nix
    ./flatpak.nix
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";
  home.stateVersion = "22.05";
}
