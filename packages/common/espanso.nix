{ config, pkgs, ... }: {
  services.espanso = {
    enable = true;
    configs.default = {
      show_notifications = false;
      toggle_key = "RIGHT_ALT";
      search_shortcut = "SHIFT+SPACE";
    };
    matches.now = {
      matches = [
        {
          trigger = ":now";
          replace = "{{currentdate}} {{currenttime}}";
        }
        {
          trigger = ":date";
          replace = "{{currentdate}}";
        }
        {
          trigger = ":time";
          replace = "{{currenttime}}";
        }
      ];
      global_vars = [
        {
          name = "currentdate";
          type = "date";
          params = {format = "%Y-%m-%d";};
        }
        {
          name = "currenttime";
          type = "date";
          params = {format = "%R";};
        }
      ];
    };
  };
}
