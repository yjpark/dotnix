{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    git
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
  ];
}

