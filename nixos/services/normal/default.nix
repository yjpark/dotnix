{ config, pkgs, ... }: {
  imports = [
    ./logind.nix
    ./xserver.nix
    ./gnome.nix
    ./zerotierone.nix
    ./privoxy.nix
  ];
}
