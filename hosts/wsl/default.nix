{ config, pkgs, ... }: {
  imports = [
    ./host.nix
    ../../nixos/settings/wsl
    ../../nixos/services/wsl
    ../../nixos/pkgs
    ../../nixos/users
  ];
  wsl = {
    enable = true;
    defaultUser = "yjpark";
    startMenuLaunchers = true;
    docker-native.enable = true;
    wslConf = {
      # This is not working, need to manually update /etc/wsl.conf after installation
      # hostname = "wsl";
      network.generateHosts = false;
    };
  };
}
