{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services/normal
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/normal/nosleep.nix
  ];
}
