{ config, pkgs, ... }: {
  imports = [
    ./console.nix
    ./fonts.nix
    ./networking.nix
  ];
}

