{ config, pkgs, ... }: {
  imports = [
    ../../packages
    ../../programs/darwin
  ];
  home.username = "yjpark";
  home.homeDirectory = "/Users/yjpark";
}
