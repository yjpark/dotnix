{ config, pkgs, lib, ... }:
  let
    rustLibs = with pkgs; [
      pkg-config
      glibc
      openssl
      # for bevy apps
      gtk3
      xorg.libX11
      xorg.libxcb
      xorg.libXcursor
      xorg.libXrandr
      xorg.libXi
      alsa-lib
      vulkan-loader
      udev
    ];
  in {
    environment.systemPackages = rustLibs;

    environment.sessionVariables.LD_LIBRARY_PATH = "${lib.makeLibraryPath rustLibs}";
  }

