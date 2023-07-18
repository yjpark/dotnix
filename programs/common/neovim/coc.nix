{ config, pkgs, ... }: {
  programs.neovim.coc = {
    enable = true;
    pluginConfig = builtins.readFile ./config/coc.vim;
    settings = {
  	"rust-analyzer.server.path" = "/etc/profiles/per-user/yjpark/bin/rust-analyzer";
    };
  };
  programs.neovim.plugins = with pkgs.vimPlugins; [
    coc-rust-analyzer
    coc-flutter
  ];
  home.packages = with pkgs; [
    rust-analyzer
  ];
}
