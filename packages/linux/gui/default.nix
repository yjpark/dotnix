{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    microsoft-edge
    google-chrome
    vlc
    qimgv
    synergy
    darktable
    obsidian
    mattermost-desktop
    vulkan-tools
  ];
}

