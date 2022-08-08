{ config, pkgs, ... }: {
  imports = [
    ./system.nix
    ./nix-flakes.nix
    ./nix-unfree.nix
    ./nix-mirror.nix
    ./networking.nix
    ./console.nix
    ./fonts.nix
    ./region.nix
  ];
}
