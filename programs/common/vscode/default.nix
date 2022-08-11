{ config, pkgs, ... }: {
  imports = [
    ./settings
    ./extensions
    ./keybindings
  ];

  programs.vscode = {
    enable = true;
  };
}
