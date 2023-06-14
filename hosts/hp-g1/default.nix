{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./mirrors.nix
    ./xmodmap.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services/normal
    ../../nixos/services/dev
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/normal/nosleep.nix
    ../../nixos/services/normal/synergy/server.nix
  ];
}
