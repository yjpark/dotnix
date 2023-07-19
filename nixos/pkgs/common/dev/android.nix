{ config, pkgs, ... }: {
  # https://nixos.wiki/wiki/Android
  programs.adb.enable = true;
  users.users.yjpark.extraGroups = ["adbusers"];
  services.udev.packages = [
    pkgs.android-udev-rules
  ];
}
