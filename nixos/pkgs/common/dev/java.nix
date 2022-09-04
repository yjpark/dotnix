{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gradle
    kotlin
    jdk
  ];
}

