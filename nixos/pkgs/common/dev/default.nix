{ config, pkgs, ... }: {
  imports = [
    ./rust.nix
    ./dotnet.nix
    ./python.nix
  ];
}
