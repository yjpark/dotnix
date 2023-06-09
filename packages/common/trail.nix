{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    xplr
    jql                 # JSON tool
    lapce               # editor
  ];
}
