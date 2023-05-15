{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xorg.xmodmap
  ];
  services.xserver.displayManager.sessionCommands = ''
    ${pkgs.xorg.xmodmap}/bin/xmodmap -e "remove shift = Shift_R"
    ${pkgs.xorg.xmodmap}/bin/xmodmap -e "keycode 62 = Up"
  '';
}
