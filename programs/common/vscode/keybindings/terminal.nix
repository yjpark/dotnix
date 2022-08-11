{ config, pkgs, ... }: {
    programs.vscode.keybindings = [
        {
            key = "ctrl+f";
            command = "-workbench.action.terminal.focusFindWidget";
            when = "terminalFocus || terminalFindWidgetFocused";
        }
        {
            key = "ctrl+f";
            command = "-workbench.action.terminal.focusFind";
            when = "terminalFindFocused && terminalProcessSupported || terminalFocus && terminalProcessSupported";
        }
    ];
}

