{ config, pkgs, ... }: {
  imports = [
    ./gnome.nix
    ./rustdesk.nix
    ./appimage.nix
  ];
}
