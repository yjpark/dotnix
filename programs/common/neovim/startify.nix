{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    vim-startify
  ];
}
