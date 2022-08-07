{ config, pkgs, ... }:
{

  environment.systemPackages = [
    (pkgs.writeShellScriptBin "nixFlakes" ''
      exec ${pkgs.nixFlakes}/bin/nix --experimental-features "nix-command flakes" "$@"
    '')
  ];

  nixpkgs.config.allowUnfree = true;
  services.openssh.enable = true;

  time.timeZone = "Asia/Shanghai";

  programs.bash.enableCompletion = true;

  console.font = "latarcyrheb-sun32";
  console.keyMap = "dvorak";

  i18n = {
    defaultLocale = "en_US.UTF-8";

  };

  services.xserver.xkbOptions = "ctrl:swapcaps";

  services.xserver.layout = "us";
  services.xserver.xkbVariant = "dvorak";
  services.xserver.exportConfiguration = true;

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    git
    tig
    gitAndTools.git-extras
    tmux
    binutils
    silver-searcher
    fzf
    htop
    iftop
    iotop
    dstat
    direnv
    tree
    lzma
    mosh
    wirelesstools
    inotify-tools
    zerotierone
    usbutils
    pciutils
    acpi
    patchelf
    unzip
    sshfs-fuse
    lm_sensors
    lsof
  ];
}

