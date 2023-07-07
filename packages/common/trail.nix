{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    xplr
    jql                 # JSON tool
    lapce               # editor
  ];
  home.file.".config/lapce-nightly/settings.toml".source = ./lapce/settings.toml;
  home.file.".config/lapce-nightly/keymaps.toml".source = ./lapce/keymaps.toml;
}
