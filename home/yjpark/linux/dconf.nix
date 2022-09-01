{ config, pkgs, ... }: {
  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      num-workspace = 10;
    };
    "org/gnome/desktop/wm/keybindings" = {
      toggle-overview = "['<Primary>Tab']";
      switch-to-workspace-1 = "['<Super>1']";
      switch-to-workspace-2 = "['<Super>2']";
      switch-to-workspace-3 = "['<Super>3']";
      switch-to-workspace-4 = "['<Super>4']";
      switch-to-workspace-5 = "['<Super>5']";
      switch-to-workspace-6 = "['<Super>6']";
      switch-to-workspace-7 = "['<Super>7']";
      switch-to-workspace-8 = "['<Super>8']";
      switch-to-workspace-9 = "['<Super>9']";
      switch-to-workspace-10 = "['<Super>0']";
      move-to-workspace-1 = "['<Super><Shift>1']";
      move-to-workspace-2 = "['<Super><Shift>2']";
      move-to-workspace-3 = "['<Super><Shift>3']";
      move-to-workspace-4 = "['<Super><Shift>4']";
      move-to-workspace-5 = "['<Super><Shift>5']";
      move-to-workspace-6 = "['<Super><Shift>6']";
    };
  };
}


