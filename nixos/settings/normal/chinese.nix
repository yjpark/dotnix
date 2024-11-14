{ config, pkgs, ... }:
  {
    i18n.inputMethod.ibus = {
      enabled = true;
      engines = with pkgs.ibus-engines; [ libpinyin table ];
  };
}
