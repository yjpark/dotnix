{ config, pkgs, ... }: {
  services.xcape = {
    enable = true;
    mapExpression = {
      Shift_L = "Escape";
    };
  };
}
