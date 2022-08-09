{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    clock24 = true;
    newSession = true;
    plugins = [
      pkgs.tmuxPlugins.nord
    ];
    extraConfig = ''
      set -g status-left '#[fg=green]#H '
      set -g status-right '#(tmux-mem --format "[#[fg=:color]:spark#[default]] #[fg=:color]:percent#[default]") #(tmux-cpu --format ":load [#[fg=:color]:spark#[default]] #[fg=:color]:percent#[default]") %H:%M'
    '';
  };
}
