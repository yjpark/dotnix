{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    copyq              # clipboard manager
  ];
}
