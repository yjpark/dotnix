{ config, pkgs, ... }: {
  imports = [
    ./flakes.nix
    #./mirrors.nix
    ./unfree.nix
    ./keeps.nix
  ];
}
