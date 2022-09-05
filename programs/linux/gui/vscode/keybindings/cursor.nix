{ config, pkgs, ... }: {
    programs.vscode.keybindings = [
        {
            key = "ctrl+a";
            command = "cursorLineStart";
        }
        {
            key = "ctrl+e";
            command = "cursorLineEnd";
        }
    ];
}

