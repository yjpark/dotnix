{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./secrets.nix
    ./bin
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services/normal
    ../../nixos/services/dev
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/normal/synergy/server.nix
  ];
}
