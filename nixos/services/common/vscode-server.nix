{ config, pkgs, ... }: {

  services.vscode-server.enable = true;

  # https://github.com/nix-community/nixos-vscode-server
  # need to have wget installed for vscode to download the binary
  # also need to run this to enable the service
  # systemctl --user start auto-fix-vscode-server.service
}
