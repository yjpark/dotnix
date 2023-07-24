{ config, pkgs, ... }: {
    programs.vscode.userSettings = {
        "rust-analyzer.checkOnSave" = false;
    };
}

