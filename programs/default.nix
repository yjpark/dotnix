{ config, pkgs, ... }: {
  imports = [
    ./fish.nix
    ./starship.nix
    ./exa.nix
    ./bat.nix
    ./bottom.nix
    ./git.nix
    ./fzf.nix
    ./tmux.nix
    ./terminator.nix
    ./alacritty.nix
  ];
}
