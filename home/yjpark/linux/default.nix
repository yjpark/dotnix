{ config, pkgs, ... }: {
  imports = [
    ../../../packages/linux
    ../../../programs/linux
    ./dconf.nix
    ./flatpak.nix
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";
}
