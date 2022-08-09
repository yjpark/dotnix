{ pkgs, ... }: {
  programs.fish.functions = {
    clear_buffer = builtins.readFile ./clear_buffer.fish;
    sync_pass = builtins.readFile ./sync_pass.fish;
  };
}
