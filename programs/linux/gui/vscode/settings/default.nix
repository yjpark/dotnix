{ config, pkgs, ... }: {
  imports = [
    ./editor.nix
    ./minimap.nix
    ./terminal.nix
    ./vim.nix
    ./rust-analyzer.nix
  ];
    programs.vscode.userSettings = {
        "window.titleBarStyle" = "custom";
        "http.proxy" = "socks5://proxy:31101";
    };
}
