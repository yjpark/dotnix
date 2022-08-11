{ config, pkgs, ... }:

{
  networking.hostId = "80b98880";
  networking.hostName = "alienware-13";
  services.wakeonlan.interfaces = [
    {
      interface = "enp2s0";
      method = "magicpacket";
    }
  ];
}
