{ config, pkgs, ... }: {
  imports = [
    ./host.nix
    ./mirrors.nix
    ../../nixos/settings/wsl
    ../../nixos/services/wsl
    ../../nixos/pkgs/wsl
    ../../nixos/users
  ];
  wsl = {
    enable = true;
    # https://github.com/nix-community/NixOS-WSL/issues/179
    # need to disable nativeSystemd when building the installer
    nativeSystemd = true;
    defaultUser = "yjpark";
    startMenuLaunchers = true;
    # use podman instead
    # docker-native.enable = true;
    wslConf = {
      # This is not working, need to manually update /etc/wsl.conf after installation
      # hostname = "wsl";
      network.generateHosts = false;
    };
  };
}
