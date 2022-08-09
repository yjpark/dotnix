{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    comma
    cachix
    xplr
  ];
}