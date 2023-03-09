{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "YJ Park";
    userEmail = "yjpark@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      # url."git@github.com:".insteadOf = "https://github.com/";
      push.default = "current";
      pull.rebase = "false";
    };
    aliases = {
      st = "status";
      co = "checkout";
      br = "branch";
      ci = "commit";
      dt = "difftool";
      mt = "mergetool";
      lg = "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
      rg = "reflog --color --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
    };
    lfs.enable = true; 
    delta = {
      enable = true;
    };
  };
  programs.gitui = {
    enable = true;
  };
}
