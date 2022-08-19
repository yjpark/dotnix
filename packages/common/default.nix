{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./gui.nix
    ./k8s.nix
    ./trail.nix
  ];
}

