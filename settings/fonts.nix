{ config, pkgs, ... }: {
  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      (nerdfonts.override { fonts = [ "FiraCode" "CascadiaCode" ]; })
    ]; 
  };
}