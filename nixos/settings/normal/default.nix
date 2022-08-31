{ config, pkgs, ... }: {
  imports = [
    ./console.nix
    ./fonts.nix
    ./chinese.nix
    ./networking.nix
    ./nix-tricks.nix
  ];
}

