{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    linux-wifi-hotspot
  ];
  services.create_ap = {
    enable = true;
    settings = {
      INTERNET_IFACE = "enp2s0";
      WIFI_IFACE = "wlp1s0";
      SSID = "edger-test";
      PASSPHRASE = "1MrGEI048t";
    };
  };
}
