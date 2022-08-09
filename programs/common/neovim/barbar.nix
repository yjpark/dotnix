{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-web-devicons
    {
      plugin = barbar-nvim;
      config = builtins.readFile ./config/barbar.vim;
    }
  ];
}

