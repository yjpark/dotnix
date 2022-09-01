{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    microsoft-edge
    google-chrome
    qimgv
    synergy
  ];
}

