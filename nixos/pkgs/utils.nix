{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    git
    tig
    git-extras
    direnv
    tmux
    binutils
    bat
    exa
    bottom
    htop
    iftop
    iotop
    dstat
    tree
    lzma
    mosh
    wirelesstools
    inotify-tools
    usbutils
    pciutils
    acpi
    patchelf
    unzip
    lm_sensors
    lsof
    ripgrep
    silver-searcher
  ];
}

