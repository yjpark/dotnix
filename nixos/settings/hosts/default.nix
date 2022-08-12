{ config, pkgs, ... }: {
  imports = [
    ./lan.nix
    ./zerotier.nix
  ];
}
