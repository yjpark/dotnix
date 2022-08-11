{ config, pkgs, ... }:

{
  networking.hostId = "f4769ef1";
  networking.hostName = "edger";
  networking.interfaces.enp37s0.wakeOnLan.enable = true;
}
