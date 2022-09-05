{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./k8s.nix
    ./music.nix
    ./trail.nix
  ];
}

