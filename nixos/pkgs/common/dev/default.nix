{ config, pkgs, ... }: {
  imports = [
    ./rust.nix
    ./dotnet.nix
    ./python.nix
    ./java.nix
    ./nodejs.nix
    ./database.nix
    ./android.nix
  ];
}

