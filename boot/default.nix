{ config, pkgs, ... }: {
  imports = [
    ./efi.nix
    ./zfs.nix
  ];
}
