{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    dconf
    gnome.gnome-tweaks
    gnomeExtensions.unite
    gnomeExtensions.appindicator
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.hibernate-status-button
    gnomeExtensions.vitals
    gnomeExtensions.evpn-shell-assistant
  ];
}


