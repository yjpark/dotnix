{ pkgs, ... }: {
  programs.fish.functions = {
    clear-buffer = builtins.readFile ./clear-buffer.fish;
    setup-ssh-agent = builtins.readFile ./setup-ssh-agent.fish;
    sync-pass = builtins.readFile ./sync-pass.fish;
  };
}
