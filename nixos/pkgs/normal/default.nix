{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./gnome.nix
    #./rustdesk.nix
    ./appimage.nix
  ];
}
