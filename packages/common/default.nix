{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./just.nix
    ./k8s.nix
    ./music.nix
    ./trail.nix
  ];
}

