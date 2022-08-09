{ pkgs, ... }: {
  programs.fish.shellAbbrs = {
    g = "git";
    e = "nvim";
    a = "rg";
    vi = "nvim";
    vim = "nvim";
    cat = "bat";
    top = "btm";
    ta = "tmux attach";
    cb = "clear_buffer";
    sp = "sync_pass";
  };
}
