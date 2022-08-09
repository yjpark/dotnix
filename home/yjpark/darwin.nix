{ config, pkgs, ... }: {
  imports = [
    ../../programs/darwin
  ];
  home.username = "yjpark";
  home.homeDirectory = "/Users/yjpark";
}
