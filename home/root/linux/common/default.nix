{ config, pkgs, lib,... }: {
  imports = [
    ../../../../packages/linux
    ../../../../programs/linux
  ];
  home = {
    username = "root";
    homeDirectory = "/root";
    stateVersion = "23.05";
  };
}
