{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    {
      plugin = unite-vim;
      config = builtins.readFile ./config/unite.vim;
    }
  ];
}
