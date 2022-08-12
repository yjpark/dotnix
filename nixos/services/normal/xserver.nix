{ config, pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver.xkbOptions = "ctrl:swapcaps";

  services.xserver.layout = "us";
  services.xserver.xkbVariant = "dvorak";
  services.xserver.exportConfiguration = true;

  # rustdesk doesn't support wayland ATM
  # https://github.com/rustdesk/rustdesk/issues/56
  services.xserver.displayManager.gdm.wayland = false;
}

