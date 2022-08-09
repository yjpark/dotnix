{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    tig
    git-extras
    mosh
    ripgrep
    silver-searcher
    hexyl
    ncdu_2
    fd
  ];
}