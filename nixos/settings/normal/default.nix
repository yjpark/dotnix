{ config, pkgs, ... }: {
  imports = [
    ./console.nix
    ./fonts.nix
    ./networking.nix
    ./nix-tricks.nix
  ];
}

