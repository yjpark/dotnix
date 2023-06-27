{ config, pkgs, ... }: {
  services.espanso = {
    enable = true;
    configs.default = {
      show_notifications = false;
      toggle_key = "RIGHT_ALT";
      search_shortcut = "SHIFT+ALT+SPACE";
    };
    configs.terminator = {
      # this is NOT working, #detect# return empty for terminator, leave it here for future reference
      filter_class = "terminator";
      backend = "Inject";
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
