{ config, pkgs, ... }: {
  imports = [
    ./gnome.nix
    ./rustdesk.nix
  ];
}
