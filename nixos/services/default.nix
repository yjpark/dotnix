{ config, pkgs, ... }: {
  imports = [
    ./openssh.nix
    ./xserver.nix
    ./zerotierone.nix
  ];
}
