{ config, pkgs, ... }: {
  imports = [
    ../common
    ./ncdu_2.nix
  ];
}

