{ config, pkgs, ... }: {
  imports = [
    ../common
    ./utils.nix
    ./ncdu_2.nix
  ];
}

