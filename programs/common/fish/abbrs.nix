{ pkgs, ... }: {
  programs.fish.shellAbbrs = {
    g = "git";
    e = "nvim";
    a = "rg --smart-case";
    f = "fd";
    n = "nix";
    nd = "nix develop .";
    c = "cargo";
    d = "dotnet";
    k = "kubectl";
    kn = "kubens";
    p = "podman";
    s = "mosh";
    z = "zi";
    j = "just";
    b = "joshuto-ueberzug";
    du = "dua";
    vi = "nvim";
    vim = "nvim";
    ps = "procs";
    bw = "sudo bandwhich";
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
