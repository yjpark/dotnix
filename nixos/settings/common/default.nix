{ config, pkgs, ... }: {
  imports = [
    ./system.nix
    ./region.nix
    ./nix
    ./hosts
    ./nix-tricks.nix
  ];
}
