{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    neovim
    git
    binutils
    htop
    iftop
    iotop
    dstat
    tree
    xz
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
    wakeonlan
    ethtool
    file
    openssl
    corkscrew   # tunnel ssh through http proxy
    pwgen
    devbox
    gping       # graphical ping
    kmon        # kernel manager and activity monitor
  ];
}

