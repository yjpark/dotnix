{ config, pkgs, lib,... }: {
  imports = [
    ../common
  ];
  home.packages = with pkgs; [
    home-manager
  ];
}
