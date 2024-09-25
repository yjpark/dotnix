{ config, pkgs, lib,... }: {
  imports = [
    ../common
    ../../../../programs/linux/gpg.nix
  ];
}
