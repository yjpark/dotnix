{ config, pkgs, ... }: {
  services.synergy.server = {
    enable = true;
    tls.enable = true;
    autoStart = true;
  };
  networking.firewall.allowedTCPPorts = [
    24800
  ];
}
