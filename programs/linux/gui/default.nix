{ config, pkgs, ... }: {
  imports = [
    ./vscode
    ./firefox.nix
    ./devilspie2.nix
  ];
}
