{ config, pkgs, ... }: {
  imports = [
    ./fish
    ./neovim
    ./starship.nix
    ./exa.nix
    ./bat.nix
    ./bottom.nix
    ./direnv.nix
    ./git.nix
    ./fzf.nix
    ./tmux.nix
    ./password-store.nix
    ./nushell.nix
    ./alacritty.nix
    ./just.nix
    ./nix-index.nix
  ];
}
