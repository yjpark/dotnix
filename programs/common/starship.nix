{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      time.disabled = false;
      format = "$fill\n$all";
      cmd_duration = {
        min_time = 1;
        show_milliseconds = true;
      };
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[✗](bold red)";
      };
      fill = {
        symbol = "═";
        style = "gray";
      };
    };
  };
}
