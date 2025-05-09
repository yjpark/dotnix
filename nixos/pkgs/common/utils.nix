{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    git
    binutils
    htop
    iftop
    iotop
    dool
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
    # quickwit
  ];
}

