{ config, pkgs, ... }: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    vimproc-vim
  ];
}
