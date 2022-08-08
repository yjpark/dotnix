{ config, pkgs, ... }: {
  imports = [
    ./common.nix
    ./terminator.nix
  ];
}
