{ config, pkgs, ... }: {
  imports = [
    ./openssh.nix
    ./xserver.nix
    ./gnome.nix
    ./zerotierone.nix
  ];
}
