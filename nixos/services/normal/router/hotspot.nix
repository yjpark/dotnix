{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    linux-wifi-hotspot
    haveged             # entropy daemon
  ];
  services.haveged = {
    enable = true;
  };
}
