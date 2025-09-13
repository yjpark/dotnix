{ config, pkgs, ... }: {
  imports = [
    ./fish
    ./neovim
    ./zed
    ./starship.nix
    ./eza.nix
    ./bat.nix
    ./bottom.nix
    ./direnv.nix
    ./ssh.nix
    ./git.nix
    ./fzf.nix
    ./tmux.nix
    ./zellij.nix
    ./skim.nix
    ./password-store.nix
    ./nushell.nix
    ./alacritty.nix
    ./zoxide.nix
    ./helix.nix
  ];
}
