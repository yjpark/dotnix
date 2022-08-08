{ config, pkgs, ... }: {
  imports = [
    ../../programs/darwin.nix
  ];
  home.username = "yjpark";
  home.homeDirectory = "/Users/yjpark";
}
