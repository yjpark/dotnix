{ config, pkgs, ... }: {
  imports = [
    ./rust.nix
    ./rustup.nix
  ];
}

