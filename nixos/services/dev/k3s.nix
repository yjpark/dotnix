{ config, pkgs, ... }: {
  services.k3s = {
    enable = true;
    role = "server";
    extraFlags = toString [
      "--no-deploy metrics-server"
    ];
  };
  networking.firewall.allowedTCPPorts = [
    6443
  ];
}
