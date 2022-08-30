{ config, pkgs, ... }: {
  imports = [
    ../common
    ./gpg.nix
    ./home-manager.nix
  ];
}
