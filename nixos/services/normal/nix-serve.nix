{ config, pkgs, ... }: {
  services.nix-serve = {
    enable = true;
    openFirewall = true;
    port = 1150;
    extraParams = "--access-log /tmp/nix-serve.log";
  };
}
