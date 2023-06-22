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
  ];
}

