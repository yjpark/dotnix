{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    git
    tig
    direnv
    tmux
    binutils
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

