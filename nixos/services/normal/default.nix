{ config, pkgs, ... }: {
  imports = [
    ../common
    ./lan.nix
    ./zerotierone.nix
    ./privoxy.nix
    ./smartdns.nix
    ./dnsmasq.nix
    ./nix-serve.nix
    ./xserver.nix
    ./flatpak.nix
    ./expressvpn.nix
    ./input-remapper.nix
    ./kanata.nix
    ./interception-tools.nix
  ];
}
