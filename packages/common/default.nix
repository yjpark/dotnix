{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./gui.nix
    ./trail.nix
  ];
}

