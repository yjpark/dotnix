{ config, pkgs, ... }: {
  services.logind.lidSwitch = "ignore";
  services.logind.extraConfig = ''
  '';
}

