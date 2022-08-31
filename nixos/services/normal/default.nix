{ config, pkgs, ... }: {
  imports = [
    ./xserver.nix
    ./zerotierone.nix
    ./privoxy.nix
    ./flatpak.nix
  ];
}
