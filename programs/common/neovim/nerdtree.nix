{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    {
      plugin = nerdtree;
      config = builtins.readFile ./config/nerdtree.vim;
    }
    nerdtree-git-plugin
  ];
}
