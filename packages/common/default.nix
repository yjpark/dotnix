{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./k8s.nix
    ./trail.nix
  ];
}

