{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ../../boot
    ../../settings
    ../../services
    ../../pkgs
    ../../users
  ];
}