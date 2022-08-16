{ config, pkgs, ... }: {
  networking.firewall.allowedTCPPortRanges = [
    { from = 29000; to = 29999 }
  ];
}
