{ config, pkgs, ... }: {
  imports = [
    ./nerdtree.nix
    ./airline.nix
    ./barbar.nix
    ./startify.nix
    ./theme.nix
    ./vimproc.nix
    ./unite.nix
    ./ansiesc.nix
    ./coc.nix
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = builtins.concatStringsSep "\n\n\n" [
      (builtins.readFile ./config/settings.vim)
      (builtins.readFile ./config/map-buffer.vim)
      (builtins.readFile ./config/map-fav.vim)
      (builtins.readFile ./config/map-insert.vim)
      (builtins.readFile ./config/tab-space.vim)
      (builtins.readFile ./config/vim-plug.vim)
    ];
  };

  home = {
    sessionVariables.EDITOR = "nvim";
  };
}
