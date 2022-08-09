{ config, pkgs, ... }: {
  imports = [
    ../common
    ./ncdu.nix
  ];
}

