{ pkgs, ... }: {
  programs.fish.shellAbbrs = {
    g = "git";
    e = "nvim";
    a = "rg";
    f = "fd";
    n = "nix";
    d = "docker";
    du = "ncdu";
    vi = "nvim";
    vim = "nvim";
    cat = "bat";
    top = "btm";
    ta = "tmux attach";
    tf = "tmux-fix-ssh-agent";
    cb = "clear-buffer";
    sp = "sync-pass";
  };
}
