{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./secrets.nix
    ../../nixos/versions/22.05.nix
    ../../nixos/boot
    ../../nixos/settings
    ../../nixos/services/normal
    ../../nixos/services/dev
    ../../nixos/pkgs
    ../../nixos/users
    ../../nixos/services/dev/k3s.ext4.nix
    # ../../nixos/services/normal/no-sleep.nix
    # ../../nixos/services/normal/synergy/server.nix
  ];
}
