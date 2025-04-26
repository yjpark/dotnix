{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    xplr
    jql                 # JSON tool
    # lapce               # editor
    yt-dlp              # YouTube downloader
    yazi                # terminal file browser
  ];
  home.file.".config/lapce-nightly/settings.toml".source = ./lapce/settings.toml;
  home.file.".config/lapce-nightly/keymaps.toml".source = ./lapce/keymaps.toml;
}
