{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    {
      plugin = vim-plugin-AnsiEsc;
      # config = builtins.readFile ./config/ansiesc.vim;
    }
  ];
}
