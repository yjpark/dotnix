{ config, pkgs, ... }: {
  imports = [
    common/fish
    common/neovim
    common/starship.nix
    common/bat.nix
    common/bottom.nix
    common/direnv.nix
    common/ssh.nix
    common/git.nix
    common/fzf.nix
    common/tmux.nix
  ];
}
