{ config, pkgs, ... }: {
  imports = [
    ../../packages/darwin
    ../../programs/darwin
  ];
  home.username = "yjpark";
  home.homeDirectory = "/Users/yjpark";
  home.stateVersion = "23.05";
}
