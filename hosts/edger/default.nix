{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./secrets.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/normal/synergy/server.nix
  ];
}
