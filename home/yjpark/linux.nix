{ config, pkgs, ... }: {
  imports = [
    ../../programs/linux
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";
}
