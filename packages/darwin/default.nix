{ config, pkgs, ... }: {
  imports = [
    ../common
    ./ncdu.nix
    ./utils.nix
  ];
}

