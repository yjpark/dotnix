{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ../../libs/disko/module.nix
    ./disk-config.nix
    ./boot.nix
    ./host.nix
    ../../nixos/versions/24.11.nix
    ../../nixos/settings/common
    ../../nixos/services/common
    ../../nixos/services/dev
    ../../nixos/pkgs/common
    ../../nixos/users
  ];
}
