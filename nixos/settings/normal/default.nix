{ config, pkgs, ... }: {
  imports = [
    ./secrets.nix
    ./console.nix
    ./fonts.nix
    ./chinese.nix
    ./networking.nix
  ];
}

