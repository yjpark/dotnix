{ config, pkgs, ... }: {
    programs.vscode.extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            name = "ayu";
            publisher = "teabyii";
            version = "1.0.5";
            sha256 = "sha256-+IFqgWliKr+qjBLmQlzF44XNbN7Br5a119v9WAnZOu4=";
        }
    ];
}