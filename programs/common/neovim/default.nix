{ config, pkgs, ... }: {
  imports = [
    ./nerdtree.nix
    ./airline.nix
    ./startify.nix
    ./vimproc.nix
    ./unite.nix
  ];

  programs.neovim = {
    enable = true;
    extraConfig = 
      builtins.concatStringsSep "\n\n\n" [
        (builtins.readFile ./config/settings.vim)
        (builtins.readFile ./config/map-buffer.vim)
        (builtins.readFile ./config/map-fav.vim)
        (builtins.readFile ./config/map-insert.vim)
        (builtins.readFile ./config/map-tab.vim)
      ];
  };

  home = {
    sessionVariables.EDITOR = "nvim";
  };
}
