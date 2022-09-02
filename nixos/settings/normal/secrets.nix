{ config, pkgs, ... }: {
  sops.secrets.hosts = {
    sopsFile = ../../../secrets/settings.yaml;
    mode = "0444";
  };
}
