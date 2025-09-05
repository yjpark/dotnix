{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    dconf
    pkgs.gnome-tweaks
    gnomeExtensions.unite
    gnomeExtensions.appindicator
    gnomeExtensions.pano
    gnomeExtensions.hibernate-status-button
    gnomeExtensions.vitals
    gnomeExtensions.run-or-raise
    gnomeExtensions.undecorate
  ];
  services.gnome.gcr-ssh-agent.enable = false;
}


