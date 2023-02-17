{ config, pkgs, ... }: {
  imports = [
    ./fish
    ./neovim
    ./starship.nix
    # ./wezterm
    ./exa.nix
    ./bat.nix
    ./bottom.nix
    ./direnv.nix
    ./ssh.nix
    ./git.nix
    ./fzf.nix
    ./tmux.nix
    ./password-store.nix
    ./nushell.nix
    ./alacritty.nix
    ./zoxide.nix
  ];
}
