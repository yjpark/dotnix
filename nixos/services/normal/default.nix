{ config, pkgs, ... }: {
  imports = [
    ./podman.nix
    ./xserver.nix
    ./gnome.nix
    ./zerotierone.nix
  ];
}
