{ config, pkgs, ... }:

{
  networking.hostId = "10e86483";
  networking.hostName = "hp-g1";

  networking.extraHosts = ''
      127.0.0.1   proxy
  '';
}
