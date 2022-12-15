{ config, pkgs, ... }: {
  networking.firewall.allowedTCPPortRanges = [
    3000
    8080
    { from = 29000; to = 29999; }
  ];
}
