{ config, pkgs, ... }: {
  imports = [
    ./host.nix
    ../../nixos/settings/system.nix
    ../../nixos/settings/nix-flakes.nix
    ../../nixos/settings/nix-mirror.nix
    ../../nixos/settings/nix-unfree.nix
    ../../nixos/services/openssh.nix
    ../../nixos/pkgs
    ../../nixos/users
  ];
  wsl = {
    enable = true;
    defaultUser = "yjpark";
    startMenuLaunchers = true;
    docker-native.enable = true;
  };
}
