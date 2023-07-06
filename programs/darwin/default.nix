{ config, pkgs, ... }: {
  imports = [
    ../common
    ./gpg.nix
  ];
}
