{ config, pkgs, ... }: {
  services.devilspie2 = {
    enable = true;
    config = ''
      if (get_window_class() == "org.wezfurlong.wezterm") then
        undecorate_window();
      end
      if (get_window_class() == "code") then
        undecorate_window();
      end
    '';
  };
}
