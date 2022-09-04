{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    mycli
  ];
}

