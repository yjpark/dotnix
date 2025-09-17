{ config, pkgs, ... }: {
  # https://nixos.wiki/wiki/Node.js
  # npm get prefix
  # npm set prefix ~/.npm
  environment.systemPackages = with pkgs; [
    nodejs
    corepack
  ];
}


