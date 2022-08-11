{ config, pkgs, ... }: {
    programs.vscode.extensions = with pkgs.vscode-extensions; [
        richie5um2.snake-trail
    ];
    programs.vscode.userSettings = {
        "snakeTrail.color" = "0,128,128";
        "snakeTrail.colorLight" = "0,128,128";
        "snakeTrail.colorDark" = "0,128,128";
        "snakeTrail.fadeMS" = 50;
        "snakeTrail.fadeStart" = 0.5;
        "snakeTrail.fadeEnd" = 0.1;
        "snakeTrail.fadeStep" = 0.05;
    };
}