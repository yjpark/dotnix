{ config, pkgs, ... }:

{
  networking.hostId = "f4769ef1";
  networking.hostName = "edger";
  services.wakeonlan.interfaces = [
    {
      interface = "enp37s0";
      method = "magicpacket";
    }
  ];
}
