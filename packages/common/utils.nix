{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    tig
    git-extras
    inetutils
    wget
    axel
    curl
    mosh              # ssh over UDP
    ripgrep           # rg
    silver-searcher   # ag
    hexyl   # binary file viewer
    fd      # better find
    dua     # du alternative, `dua i` can also delete files
    comma   # run software without installing it (need nix-index)
  ];
}
