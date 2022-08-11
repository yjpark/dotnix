{ config, pkgs, ... }: {
  programs.vscode.extensions = with pkgs.vscode-extensions; [
    vscodevim.vim
    eamodio.gitlens
    humao.rest-client
    yzhang.markdown-all-in-one
    streetsidesoftware.code-spell-checker
  ];
}
