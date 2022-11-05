{ config, pkgs, ... }: {
  networking.firewall.allowedTCPPortRanges = [
    2342    # photoprism
  ];
}
