{ pkgs, ... }: {
  programs.fish.functions = {
    setup-ssh-agent = builtins.readFile ./setup-ssh-agent.fish;
    reset-ssh-agent = builtins.readFile ./reset-ssh-agent.fish;
    check-ssh-agent = builtins.readFile ./check-ssh-agent.fish;
    sync-pass = builtins.readFile ./sync-pass.fish;
    tmux-fix-ssh-agent = builtins.readFile ./tmux-fix-ssh-agent.fish;
    set-proxy = builtins.readFile ./set-proxy.fish;
  };
}
