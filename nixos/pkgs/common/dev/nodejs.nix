{ config, pkgs, ... }: {
  # https://nixos.wiki/wiki/Node.js
  environment.systemPackages = with pkgs; [
    nodejs
    corepack
  ];
}


