{ config, pkgs, ... }: {
  imports = [
    ./ports.nix
    ./k3s.nix
  ];
}
