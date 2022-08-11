{ config, pkgs, ... }: {
  virtualisation.docker.enable = false;

  virtualisation.podman = {
    enable = true;
    dockerSocket.enable = true;
    defaultNetwork.dnsname.enable = true; 
    extraPackages = [ pkgs.zfs ];
  };

  environment.systemPackages = with pkgs; [
    arion
    podman-compose
    docker-client
  ]; 
}