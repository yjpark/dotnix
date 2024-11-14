{ config, pkgs, ... }:
  {
    i18n.inputMethod = {
      enabled = true;
      type = "ibus";
      ibus.engines = with pkgs.ibus-engines; [ libpinyin table ];
  };
}
