{ config, pkgs, ... }:
{
  nix.settings.substituters = pkgs.lib.mkBefore [
    # "http://edger.yjpark.zerotier:1050/"
    "http://10.0.1.6:1050/"
  ];
  nix.settings.trusted-public-keys = [
    "edger:TCLFJAq2OeCXAZ5kr548+cuW3k4VpBVHjpslrARzpeg="
    "a13:40GhMoEE/ku+x0eo0UucgPqMbDYpzgzSWUnGpXgqRec="
  ];
}
