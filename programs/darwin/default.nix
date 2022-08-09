{ config, pkgs, ... }: {
  imports = [
    ../common
    ./home-manager.nix
  ];
}
