{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
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
