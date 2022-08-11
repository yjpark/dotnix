{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services
    ../../nixos/pkgs
    ../../nixos/users
  ];
}
