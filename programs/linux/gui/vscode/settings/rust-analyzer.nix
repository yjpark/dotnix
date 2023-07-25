{ config, pkgs, ... }: {
    programs.vscode.userSettings = {
      # "rust-analyzer.checkOnSave" = false;
      "rust-analyzer.files.excludeDirs" = [
        "**/external"
      ];
    };
}

