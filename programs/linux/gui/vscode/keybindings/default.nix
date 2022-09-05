{ config, pkgs, ... }: {
  imports = [
    ./tab.nix
    ./fav.nix
    ./cursor.nix
    ./toggles.nix
    ./terminal.nix
  ];
}
