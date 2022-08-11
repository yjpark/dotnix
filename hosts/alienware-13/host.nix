{ config, pkgs, ... }:

{
  networking.hostId = "80b98880";
  networking.hostName = "alienware-13";
  networking.interfaces.enp2s0.wakeOnLan.enable = true;
}
