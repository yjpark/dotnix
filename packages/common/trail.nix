{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    cachix
    xplr
    jql                 # JSON tool
  ];
}
