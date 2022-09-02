{ config, pkgs, ... }: {
  imports = [
    ./xserver.nix
    ./zerotierone.nix
    ./privoxy.nix
    ./smartdns.nix
    ./dnsmasq.nix
    ./flatpak.nix
  ];
}
