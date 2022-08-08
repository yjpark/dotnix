{ pkgs, ... }: {
  programs.terminator = {
    enable = true;
    config = {
      globla_config.borderless = true;
      globla_config.close_button_on_tab = false;

      keybindings.zoom_in = "<Primary>equal";
      keybindings.zoom_out = "<Primary>minus";
      keybindings.new_tab = "<Primary>t";
      keybindings.close_term = "<Primary>w";
      keybindings.copy = "<Primary>c";
      keybindings.paste = "<Primary>v";
      keybindings.switch_to_tab_1 = "<Primary>1";
      keybindings.switch_to_tab_2 = "<Primary>2";
      keybindings.switch_to_tab_3 = "<Primary>3";
      keybindings.switch_to_tab_4 = "<Primary>4";
      keybindings.switch_to_tab_5 = "<Primary>5";
      keybindings.switch_to_tab_6 = "<Primary>6";
      keybindings.switch_to_tab_7 = "<Primary>7";
      keybindings.switch_to_tab_8 = "<Primary>8";
      keybindings.switch_to_tab_9 = "<Primary>9";
      keybindings.switch_to_tab_10 = "<Primary>0";
    };
  };
}
