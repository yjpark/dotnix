{ config, pkgs, ... }: {
  imports = [
    ../../packages/minimal
    ../../programs/minimal
  ];
  home.username = "yjpark";
  home.homeDirectory = "/Users/yjpark";
}
