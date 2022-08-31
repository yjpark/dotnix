{ config, pkgs, ... }: {
    programs.vscode.userSettings = {
        "editor.wordWrap" = "on";
        "workbench.editor.showTabs" = true;
        "workbench.editor.enablePreview" = false;
        "workbench.editor.enablePreviewFromQuickOpen" = false;
        "editor.fontFamily" = "FiraCode Nerd Font Mono";
        "editor.fontLigatures" = true;
        "editor.scrollbar.vertical" = false;
        "editor.overviewRulerBorder" = false;
        "editor.bracketPairColorization.enabled" = true;
        "editor.guides.bracketPairs" = "active";
    };
}

