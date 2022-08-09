{ config, pkgs, ... }: {
  imports = [
    ../common
    ./tcdu.nix
  ];
}

