{ config, pkgs, ... }: {
  imports = [
    ./editor.nix
    ./minimap.nix
    ./terminal.nix
    ./vim.nix
  ];
}
