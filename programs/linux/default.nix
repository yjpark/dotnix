{ config, pkgs, ... }: {
  imports = [
    ../common
    ./gpg.nix
    ./xcape.nix
    ./terminator.nix
    ./vscode
    ./firefox.nix
  ];
}
