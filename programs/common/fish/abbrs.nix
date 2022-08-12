{ pkgs, ... }: {
  programs.fish.shellAbbrs = {
    g = "git";
    e = "nvim";
    a = "rg";
    f = "fd";
    n = "nix";
    d = "docker";
    p = "podman";
    du = "dua";
    vi = "nvim";
    vim = "nvim";
    cat = "bat";
    top = "btm";
    tree = "exa -T";
    ta = "tmux attach";
    tf = "tmux-fix-ssh-agent";
    cb = "clear-buffer";
    sp = "sync-pass";
    gwp = "git-commit-wip-and-push";
    gsp = "git-commit-sync-and-push";
    gps = "ps -ef | grep -i";
  };
}
