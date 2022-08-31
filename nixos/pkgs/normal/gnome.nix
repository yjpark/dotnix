{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.unite
    gnomeExtensions.appindicator
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.system-monitor-next
  ];
}


