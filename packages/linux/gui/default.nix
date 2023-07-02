{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    microsoft-edge
    google-chrome
    vlc
    qimgv
    synergy
    oculante
    darktable
    obsidian
    mattermost-desktop
    vulkan-tools
    ydotool
    gnome-randr
  ];
  home.file.".config/run-or-raise/shortcuts.conf".source = ./run-or-raise/shortcuts.conf;
}

