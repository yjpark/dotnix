{ pkgs, ... }: {
  programs.ssh = {
    enable = true;
    forwardAgent = true;
    includes = [ "~/.ssh/hosts/*" ];
  };
}
