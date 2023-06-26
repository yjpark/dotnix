{ config, pkgs, ... }: {
  imports = [
    ./utils.nix
    ./just.nix
    ./espanso.nix
    ./k8s.nix
    ./music.nix
    ./trail.nix
  ];
}

