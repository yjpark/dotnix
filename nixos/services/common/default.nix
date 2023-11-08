{ config, pkgs, ... }: {
  imports = [
    ./openssh.nix
    ./mosh.nix
    ./podman.nix
    ./vscode-server.nix
  ];
}
