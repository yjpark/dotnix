{ config, pkgs, ... }: {
  imports = [
    ./tools.nix
    ./dev.nix
    ./snake-trail.nix
    ./themes
  ];
  # https://github.com/nix-community/home-manager/issues/2798
  programs.vscode.mutableExtensionsDir = false;
}
