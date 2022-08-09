{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    {
      plugin = papercolor-theme;
      config = builtins.readFile ./config/theme.vim;
    }
  ];
}