{ config, pkgs, ... }: {
  imports = [
    ../common
    ./gui.nix
    ./utils.nix
    ./ncdu_2.nix
    ./vscode-server.nix
  ];
}

