{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./secrets.nix
    #need to stick to kernel 6.1 for displaylink usage
    #../../nixos/boot
    ../../nixos/boot/efi.nix
    ../../nixos/settings
    ../../nixos/services/normal
    ../../nixos/services/dev
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/normal/synergy/server.nix
  ];
}
