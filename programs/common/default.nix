{ config, pkgs, ... }: {
  imports = [
    ./fish
    ./neovim
    ./starship.nix
    ./exa.nix
    ./bat.nix
    ./bottom.nix
    ./direnv.nix
    ./ssh.nix
    ./git.nix
    ./fzf.nix
    ./tmux.nix
    ./gpg.nix
    ./password-store.nix
    ./nushell.nix
    ./alacritty.nix
    ./just.nix
    ./vscode
  ];
}
