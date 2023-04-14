{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    tig
    git-extras
    inetutils
    gnused
    wget
    axel
    curl
    mmv               # rename multiple files
    comma             # run software without installing it (need nix-index)
    mosh              # ssh over UDP
    ripgrep           # rg
    silver-searcher   # ag
    age               # file encryption and key tool
    ssh-to-age        # convert ssh ed25519 keys to age keys
    sops              # file encription
    joshuto             # ternimal file browser
    catdoc              # used by joshuto preview
    exiftool            # used by joshuto preview
    ueberzug            # show images for joshuto
    hexyl               # binary file viewer
    fd                  # better find
    dua                 # du alternative, `dua i` can also delete files
    procs               # better ps
    sd                  # sed alternative
    tokei               # source line calculater
    bandwhich           # show network usage by process
    dogdns              # dig alternative
    git-annex           # manage large files in git easily
    git-crypt           # save secret files in git
    bup                 # dedup backup tool
    cachix              # nix binary cache
    minio-client        # mc
  ];
}
