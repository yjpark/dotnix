{ pkgs, ... }: {
  home.packages = with pkgs; [
    nix
    devbox
    corkscrew
    reattach-to-user-namespace
  ];
}
