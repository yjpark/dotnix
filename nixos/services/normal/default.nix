{ config, pkgs, ... }: {
  imports = [
    ./xserver.nix
    ./gnome.nix
    ./zerotierone.nix
    ./privoxy.nix
    ./dev.nix
    ./k3s.nix
  ];
}
