{ config, pkgs, ... }: {
  imports = [
    ../common
    ./utils
    ./ncdu_2.nix
    ./vscode-server.nix
  ];
}

