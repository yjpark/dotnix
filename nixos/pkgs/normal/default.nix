{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./gnome.nix
    ./dev
    ./rustdesk.nix
    ./appimage.nix
  ];
}
