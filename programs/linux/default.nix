{ config, pkgs, ... }: {
  imports = [
    ../common
    ./xcape.nix
    ./terminator.nix
    ./firefox.nix
  ];
}
