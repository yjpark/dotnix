{ pkgs, ... }: {
  home.packages = with pkgs; [
    devbox
    corkscrew
    reattach-to-user-namespace
  ];
}
