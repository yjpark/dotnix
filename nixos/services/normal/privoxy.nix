{ config, pkgs, ... }: {
  services.privoxy = {
    enable = true;
    settings = {
        listen-address = "0.0.0.0:1102";
        forward-socks5 = "/ localhost:1101 .";
    };
  };
  environment.etc = {
    "privoxy/direct.action".source = ./privoxy.direct.action;
  };
  services.privoxy.settings.actionsFiles = [
    "/etc/privoxy/direct.action"
  ];
  networking.firewall.allowedTCPPorts = [
    1101
    1102
  ];
}
