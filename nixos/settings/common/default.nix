{ config, pkgs, ... }: {
  imports = [
    ./region.nix
    ./nix
    ./hosts
    ./nix-tricks.nix
  ];
}
