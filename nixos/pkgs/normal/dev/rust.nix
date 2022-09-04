{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    pkg-config
    # for bevy apps
    gtk3
    xorg.libX11
    xorg.libxcb
    xorg.libXcursor
    xorg.libXrandr
    xorg.libXi
    vulkan-loader
  ];
}

