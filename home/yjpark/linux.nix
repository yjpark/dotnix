{ config, pkgs, ... }: {
  imports = [
    ../../packages/linux
    ../../programs/linux
  ];
  home.username = "yjpark";
  home.homeDirectory = "/home/yjpark";

  # Allow flatpak to use system fonts, may not needed in the future
  # https://github.com/NixOS/nixpkgs/issues/119433
  # https://github.com/NixOS/nixpkgs/pull/180433
  home.file.".local/share/flatpak/overrides/global".text = ''
    [Context]
    filesystems=/run/current-system/sw/share/X11/fonts:ro;/nix/store:ro
  '';
}
