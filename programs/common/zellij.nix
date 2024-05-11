{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    settings = {
      default_layout = "compact";
      theme = "molokai-dark";
    };
  };
}
