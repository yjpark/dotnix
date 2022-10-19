{ config, pkgs, ... }: {
  services.create_ap = {
    enable = true;
    settings = {
      INTERNET_IFACE = "enp2s0";
      WIFI_IFACE = "wlp1s0";
      SSID = "test";
      PASSPHRASE = "CHANGE-THIS";
    };
  };
}
