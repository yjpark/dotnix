{ config, pkgs, ... }: {
  imports = [
    ./editor.nix
    ./minimap.nix
  ];
}
