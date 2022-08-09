{ config, pkgs, ... }: {
  imports = [
    ../../packages
    ../../programs/linux
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";
}
