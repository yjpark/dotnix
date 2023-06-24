{ config, pkgs, ... }: {
  services.dnsmasq = {
    enable = true;
    resolveLocalQueries = true;
    settings.server = [
      "127.0.0.1#1053"
    ];
    settings = {
      interface = "lo";
      no-dhcp-interface = "lo";
      addn-hosts = "${config.sops.secrets.hosts.path}";
    };
  };
}
