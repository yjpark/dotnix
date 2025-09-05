# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: {
  programs.nix-ld.enable = true;
  environment.systemPackages = with pkgs; [
    nix-index
    comma             # run software without installing it (need nix-index)
    nix-search-cli
    # Need to have nix-alien's overlay
    nix-alien
    nix-index-update
  ];
}

