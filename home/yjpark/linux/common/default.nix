{ config, pkgs, lib,... }: {
  imports = [
    ../../../../packages/linux
    ../../../../programs/linux
  ];
  home = {
    username = "yjpark";
    homeDirectory = "/home/yjpark";
    stateVersion = "23.05";
  };
}
