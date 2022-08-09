{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    tcdu_2
  ];
}