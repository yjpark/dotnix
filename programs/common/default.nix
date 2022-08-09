{ config, pkgs, ... }: {
  imports = [
    ./fish.nix
    ./starship.nix
    ./exa.nix
    ./bat.nix
    ./bottom.nix
    ./direnv.nix
    ./git.nix
    ./fzf.nix
    ./tmux.nix
    ./alacritty.nix
  ];
}
