{ config, pkgs, ... }: {
  imports = [
    ./fish.nix
    ./starship.nix
    ./neovim
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
