{ config, pkgs, ... }: {
  imports = [
    ../../programs/linux.nix
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";
}
