{ config, pkgs, ... }: {
  imports = [
    ./system.nix
    ./region.nix
    ./nix-flakes.nix
    ./nix-unfree.nix
    ./nix-mirror.nix
    ./hosts
  ];
}
