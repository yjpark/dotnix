{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./secrets.nix
    ./mirrors.nix
    ./ports.nix
    ./samba.nix
    ../../nixos/versions/22.05.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services/normal
    #../../nixos/services/dev
    ../../nixos/pkgs
    ../../nixos/users
    #../../nixos/services/normal/no-sleep.nix
    #../../nixos/services/normal/no-wayland.nix
    ../../nixos/services/normal/router
  ];
}
