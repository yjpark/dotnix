{ config, pkgs, ... }: {
  imports = [
    ./vscode
    ./firefox.nix
  ];
}
