{ config, pkgs, ... }: {
  imports = [
    ./system.nix
    ./nix-flakes.nix
    ./nix-unfree.nix
    ./networking.nix
    ./console.nix
    ./region.nix
  ];
}
