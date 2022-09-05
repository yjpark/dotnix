{ config, pkgs, lib,... }: {
  imports = [
    ../../../../packages/linux
    ../../../../programs/linux
  ];
  systemd.user.startServices = "sd-switch";
  home = {
    username = "yjpark";
    homeDirectory = "/home/yjpark";
    stateVersion = "22.05";
  };
}
