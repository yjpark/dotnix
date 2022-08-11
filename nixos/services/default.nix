{ config, pkgs, ... }: {
  imports = [
    ./openssh.nix
    ./podman.nix
    ./xserver.nix
    ./gnome.nix
    ./zerotierone.nix
  ];
}
