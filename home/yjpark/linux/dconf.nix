{ config, pkgs, ... }: {
  dconf.settings = {
    "/org/gnome/desktop/wm" = {
      "preferences/num-workspace" = 10;
      "keybindings/switch-to-workspace-left" = "['<Primary><Super>Left']";
      "keybindings/switch-to-workspace-right" = "['<Primary><Super>Right']";
      "keybindings/switch-to-workspace-up" = "['<Primary><Super>Up']";
      "keybindings/switch-to-workspace-down" = "['<Primary><Super>Down']";
      "keybindings/switch-to-workspace-1" = "['<Super>1']";
      "keybindings/switch-to-workspace-2" = "['<Super>2']";
      "keybindings/switch-to-workspace-3" = "['<Super>3']";
      "keybindings/switch-to-workspace-4" = "['<Super>4']";
      "keybindings/switch-to-workspace-5" = "['<Super>5']";
      "keybindings/switch-to-workspace-6" = "['<Super>6']";
      "keybindings/switch-to-workspace-7" = "['<Super>7']";
      "keybindings/switch-to-workspace-8" = "['<Super>8']";
      "keybindings/switch-to-workspace-9" = "['<Super>9']";
      "keybindings/switch-to-workspace-10" = "['<Super>0']";
      "keybindings/move-to-workspace-1" = "['<Super><Shift>1']";
      "keybindings/move-to-workspace-2" = "['<Super><Shift>2']";
      "keybindings/move-to-workspace-3" = "['<Super><Shift>3']";
      "keybindings/move-to-workspace-4" = "['<Super><Shift>4']";
      "keybindings/move-to-workspace-5" = "['<Super><Shift>5']";
      "keybindings/move-to-workspace-6" = "['<Super><Shift>6']";
    };
  };
}


