{ config, pkgs, ... }: {
  services.logind.extraConfig = ''
    HandleLidSwitch=ignore
  '';
}

