{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./mirrors.nix
    ../../nixos/versions/24.11.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services/normal
    #../../nixos/services/dev
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/normal/no-sleep.nix
    # ../../nixos/services/normal/no-wayland.nix
    # ../../nixos/services/normal/synergy/server.nix
    ../../programs/linux/niri
  ];
}
