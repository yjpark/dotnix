{ config, pkgs, ... }: {
  imports = [
    ./editor.nix
    ./minimap.nix
    ./terminal.nix
    ./vim.nix
  ];
    programs.vscode.userSettings = {
        "window.titleBarStyle" = "custom";
    };
}
