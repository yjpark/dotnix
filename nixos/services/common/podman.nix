{ config, pkgs, ... }: {
  virtualisation.docker.enable = false;

  virtualisation.podman = {
    enable = true;
    dockerSocket.enable = true;
    defaultNetwork.dnsname.enable = true; 
    extraPackages = [ pkgs.zfs ];
  };

  virtualisation.containers.registries.search = [
    "docker.io"
  ];

  virtualisation.containers.registries.insecure = [
    "localhost:5000"
    "localhost:29003"
  ];

  environment.systemPackages = with pkgs; [
    arion
    podman-compose
    docker-client
  ]; 
}
