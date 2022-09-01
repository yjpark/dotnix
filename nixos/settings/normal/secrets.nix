{ config, pkgs, ... }: {
  sops.secrets.hosts = {
    sopsFile = ../../../secrets/settings.yaml;
  };
    networking.extraHosts = builtins.readFile config.sops.secrets.hosts.path;
}
