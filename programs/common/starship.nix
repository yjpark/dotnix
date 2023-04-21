{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      add_separator = true;
      time.disabled = false;
      cmd_duration = {
        min_time = 1;
        show_milliseconds = true;
      };
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[✗](bold red)";
      };

    };
  };
}
