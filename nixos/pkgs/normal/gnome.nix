{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    dconf
    gnome.gnome-tweaks
    gnomeExtensions.unite
    gnomeExtensions.appindicator
    gnomeExtensions.pano
    gnomeExtensions.hibernate-status-button
    gnomeExtensions.vitals
    gnomeExtensions.run-or-raise
    gnomeExtensions.undecorate
  ];
}


