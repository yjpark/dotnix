{ config, pkgs, ... }: {
  services.kanata.enable = true;
  environment.systemPackages = with pkgs; [
    kanata
  ];
}
