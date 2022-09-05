{ config, pkgs, ... }:
{
  nix.settings.substituters = pkgs.lib.mkBefore [
    "http://10.0.1.14:1050/"
  ];
  nix.settings.trusted-public-keys = [
    "edger:TCLFJAq2OeCXAZ5kr548+cuW3k4VpBVHjpslrARzpeg="
  ]
}
