{ config, pkgs, ... }: {
  services.dnsmasq = {
    enable = true;
    resolveLocalQueries = true;
    servers = [
      "127.0.0.1#1053"
    ];
    extraConfig = ''
      interface = lo
      no-dhcp-interface = lo
      addn-hosts=${config.sops.secrets.hosts.path}
    '';
  };
}
