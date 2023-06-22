{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      format = "$fill $time $fill $cmd_duration\n$all";
      add_newline = false;
      aws = {
        disabled = true;
      };
      cmd_duration = {
        format = "[$duration]($style)";
      };
      time = {
        disabled = false;
        format = "[$time]($style)";
      };
      cmd_duration = {
        min_time = 0;
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
