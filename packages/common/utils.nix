{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    tig
    git-extras
    inetutils
    wget
    axel
    curl
    comma             # run software without installing it (need nix-index)
    mosh              # ssh over UDP
    ripgrep           # rg
    silver-searcher   # ag
    hexyl               # binary file viewer
    fd                  # better find
    dua                 # du alternative, `dua i` can also delete files
    procs               # better ps
    sd                  # sed alternative
    tokei               # source line calculater
    bandwhich           # show network usage by process
    dogdns              # dig alternative
  ];
}
