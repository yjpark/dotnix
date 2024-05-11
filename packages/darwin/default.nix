{ config, pkgs, ... }: {
  imports = [
    ../common
    ./ncdu.nix
    ./devbox.nix
  ];
}

