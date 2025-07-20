{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    #microsoft-edge
    google-chrome
    vlc
    qimgv
    synergy
    oculante
    darktable
    obsidian
    #mattermost-desktop
    vulkan-tools
    ydotool
    gnome-randr
    gjs # JavaScript bindings for GNOME
    clash-verge-rev # clash gui
  ];
  home.file.".config/run-or-raise/shortcuts.conf".source = ./run-or-raise/shortcuts.conf;
}

