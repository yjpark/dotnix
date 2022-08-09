{ config, pkgs, ... }: {
  imports = [
    ../../packages/linux
    ../../programs/linux
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";
}
