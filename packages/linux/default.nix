{ config, pkgs, ... }: {
  imports = [
    ../common
    ./utils.nix
    ./kanata.nix
    ./ncdu_2.nix
    ./vscode-server.nix
  ];
}

