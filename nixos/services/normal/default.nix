{ config, pkgs, ... }: {
  imports = [
    ./zerotierone.nix
    ./privoxy.nix
    ./smartdns.nix
    ./dnsmasq.nix
    ./nix-serve.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}
