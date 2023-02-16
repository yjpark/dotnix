{ config, pkgs, ... }: {
  imports = [
    ../common
    ./zerotierone.nix
    ./privoxy.nix
    ./smartdns.nix
    ./dnsmasq.nix
    ./nix-serve.nix
    ./xserver.nix
    ./flatpak.nix
    ./expressvpn.nix
  ];
}
