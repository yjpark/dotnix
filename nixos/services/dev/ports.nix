{ config, pkgs, ... }: {
  networking.firewall.allowedTCPPortRanges = [
    { from = 3000; to = 3010; }
    { from = 8080; to = 8090; }
    { from = 29000; to = 29999; }
  ];
}
