{ config, pkgs, ... }: {
  imports = [
    ../common
    ./terminator.nix
  ];
}
