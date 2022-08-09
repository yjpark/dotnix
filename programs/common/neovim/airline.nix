{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    {
      plugin = vim-airline;
      config = builtins.readFile ./config/airline.vim;
    }
    vim-airline-themes
  ];
}
